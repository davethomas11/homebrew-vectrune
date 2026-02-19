import hashlib
import os
import re
from pathlib import Path

import requests

GITHUB_REPO = "davethomas11/vectrune"
FORMULA_PATH = Path("vectrune.rb")
API_ROOT = f"https://api.github.com/repos/{GITHUB_REPO}"

ASSET_PATTERNS = {
    "macos-arm64": re.compile(r"macos-arm64"),
    "macos-x86_64": re.compile(r"macos-x86_64"),
    "linux-x86_64": re.compile(r"linux-x86_64-gnu"),
    "linux-x86_64-musl": re.compile(r"linux-x86_64-musl"),
    "linux-arm64": re.compile(r"linux-arm64"),
    "linux-armv7": re.compile(r"linux-armv7"),
    "windows-x86_64": re.compile(r"windows-x86_64"),
}

PLATFORM_SLOTS = [
    ("on_macos", [
        ("on_arm", ["macos-arm64"]),
        ("on_intel", ["macos-x86_64"]),
    ]),
    ("on_linux", [
        ("on_arm", ["linux-arm64", "linux-armv7"]),
        ("on_intel", ["linux-x86_64", "linux-x86_64-musl"]),
    ]),
    ("on_windows", [
        ("on_intel", ["windows-x86_64"]),
    ]),
]

SESSION = requests.Session()
SESSION.headers.update({
    "Accept": "application/vnd.github+json",
    "User-Agent": "homebrew-vectrune-updater",
})
if token := os.getenv("GITHUB_TOKEN"):
    SESSION.headers["Authorization"] = f"Bearer {token}"


def get_latest_release():
    resp = SESSION.get(f"{API_ROOT}/releases/latest", timeout=15)
    resp.raise_for_status()
    return resp.json()


def download_and_sha256(url):
    resp = SESSION.get(url, timeout=60)
    resp.raise_for_status()
    return hashlib.sha256(resp.content).hexdigest()


def collect_assets(release):
    assets = {}
    for asset in release.get("assets", []):
        name = asset.get("name", "")
        for key, pattern in ASSET_PATTERNS.items():
            if pattern.search(name):
                assets[key] = {
                    "url": asset["browser_download_url"],
                    "sha256": download_and_sha256(asset["browser_download_url"]),
                }
    return assets


def render_platform_block(platform, slots, assets):
    arch_blocks = []
    for selector, candidates in slots:
        asset = next((assets[c] for c in candidates if c in assets), None)
        if not asset:
            continue
        block_lines = [
            f"    {selector} do",
            f"      url \"{asset['url']}\"",
            f"      sha256 \"{asset['sha256']}\"",
            "    end",
        ]
        arch_blocks.append("\n".join(block_lines))
    if not arch_blocks:
        return ""
    return f"  {platform} do\n" + "\n\n".join(arch_blocks) + "\n  end"


def build_formula(version, assets):
    sections = [
        "class Vectrune < Formula",
        '  desc "VectRune CLI tool"',
        '  homepage "https://github.com/davethomas11/vectrune"',
        f'  version "{version}"',
    ]
    for platform, slots in PLATFORM_SLOTS:
        block = render_platform_block(platform, slots, assets)
        if block:
            sections.append("")
            sections.append(block)
    sections.extend([
        "",
        "  def install",
        '    bin.install "vectrune"',
        "  end",
        "end",
    ])
    return "\n".join(sections) + "\n"


def update_formula(version, assets):
    formula_text = build_formula(version, assets)
    FORMULA_PATH.write_text(formula_text, encoding="utf-8")
    print(f"Updated {FORMULA_PATH} to version {version}")


def main():
    release = get_latest_release()
    version = release.get("tag_name", "").lstrip("v")
    if not version:
        raise RuntimeError("Could not determine release tag")
    assets = collect_assets(release)
    if not assets:
        raise RuntimeError("No matching assets found in the latest release")
    update_formula(version, assets)


if __name__ == "__main__":
    main()
