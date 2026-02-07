import requests
import hashlib
import os
import re

GITHUB_REPO = "davethomas11/vectrune"
FORMULA_PATH = "vectrune.rb"

ASSET_MAP = {
    "macos-arm64": {
        "pattern": r"macos-arm64",
        "block": "on_arm",
        "os": "macos"
    },
    "macos-x86_64": {
        "pattern": r"macos-x86_64",
        "block": "on_intel",
        "os": "macos"
    },
    "linux-x86_64": {
        "pattern": r"linux-x86_64",
        "block": None,
        "os": "linux"
    }
}

def get_latest_release():
    url = f"https://api.github.com/repos/{GITHUB_REPO}/releases/latest"
    resp = requests.get(url)
    resp.raise_for_status()
    return resp.json()

def download_and_sha256(url):
    resp = requests.get(url)
    resp.raise_for_status()
    data = resp.content
    sha256 = hashlib.sha256(data).hexdigest()
    return sha256

def update_formula(version, assets):
    with open(FORMULA_PATH, "r") as f:
        formula = f.read()

    # Update version
    formula = re.sub(r'version "[^"]+"', f'version "{version}"', formula)

    # Update URLs and sha256
    for key, info in ASSET_MAP.items():
        asset = assets.get(key)
        if not asset:
            continue
        url = asset['url']
        sha256 = asset['sha256']
        if info['os'] == "macos":
            block = info['block']
            # Update url
            formula = re.sub(
                rf'(on_{block} do\s+url ")[^"]+("\s+sha256 ")[^"]+("\s+end)',
                rf'on_{block} do\n      url "{url}"\n      sha256 "{sha256}"\n    end',
                formula
            )
        elif info['os'] == "linux":
            # Update linux url and sha256
            formula = re.sub(
                r'(on_linux do\s+url ")[^"]+("\s+sha256 ")[^"]+("\s+end)',
                rf'on_linux do\n      url "{url}"\n      sha256 "{sha256}"\n  end',
                formula
            )
    with open(FORMULA_PATH, "w") as f:
        f.write(formula)
    print(f"Updated {FORMULA_PATH} to version {version}")

def main():
    release = get_latest_release()
    version = release['tag_name'].lstrip('v')
    assets = {}
    for asset in release['assets']:
        for key, info in ASSET_MAP.items():
            if re.search(info['pattern'], asset['name']):
                sha256 = download_and_sha256(asset['browser_download_url'])
                assets[key] = {
                    'url': asset['browser_download_url'],
                    'sha256': sha256
                }
    update_formula(version, assets)

if __name__ == "__main__":
    main()
