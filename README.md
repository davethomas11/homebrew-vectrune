# homebrew-vectrune

Homebrew tap for the VectRune CLI artifacts that ship out of `davethomas11/vectrune`.

## Install

```sh
brew tap davethomas11/homebrew-vectrune
brew install vectrune
```

That `brew tap` command is all you need—Homebrew will automatically pull this repository as the `davethomas11/homebrew-vectrune` tap and install the `vectrune` formula from it.

## Supported platforms

- macOS on Apple Silicon (`on_macos` + `on_arm`)
- macOS on Intel (`on_macos` + `on_intel`)
- Linux on Intel (`on_linux` + `on_intel`, glibc preferred, musl fallback)
- Linux on ARM (`on_linux` + `on_arm` once the upstream release provides ARM tarballs)

Homebrew does not expose an `on_windows` stanza, so the tap intentionally skips Windows assets. If/when Linux ARM tarballs appear, they will immediately get picked up because the formula already includes the `on_linux/on_arm` block.

## Release strategy

Homebrew taps traditionally package the latest stable release only. If you ever need to keep multiple lines around you can fork the formula into files such as `vectrune@0.1`, but keeping a single moving `vectrune` formula is the default and avoids extra maintenance.

## Updating the formula manually

1. Create a virtual environment using the repo default toolchain:
   ```sh
   python3 -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
   ```
2. Re-generate the formula from the newest GitHub release:
   ```sh
   GITHUB_TOKEN="<token with repo scope>" python update_formula.py
   ```
   The token keeps GitHub API calls authenticated so downloading every archive does not hit the anonymous rate limits. The script recomputes SHA-256 hashes for every matching asset and rewrites `vectrune.rb`.
3. Commit the resulting `vectrune.rb` change and open a PR if you want review before merging.

## Automation

The repo ships with `.github/workflows/update-formula.yml`, a workflow that:
- Runs on `workflow_dispatch` (manual button), `release` (when a release is published here), and `repository_dispatch` (so `davethomas11/vectrune` can ping it right after tagging).
- Installs the Python tooling from `requirements.txt`.
- Executes `update_formula.py`.
- Commits and pushes the regenerated formula back to `main` if it changed.

To trigger it automatically whenever `davethomas11/vectrune` cuts a new tag, create a PAT with `repo` scope, store it as a secret in that repository, and have the release workflow there call the GitHub REST API:

```sh
curl -X POST \
  -H "Authorization: Bearer <PAT>" \
  -H "Accept: application/vnd.github+json" \
  https://api.github.com/repos/davethomas11/homebrew-vectrune/dispatches \
  -d '{"event_type":"vectrune-release"}'
```

## Repo layout

- `vectrune.rb` – the Homebrew formula.
- `update_formula.py` – helper that rewrites the formula from the latest release.
- `requirements.txt` – minimal Python dependencies for the helper.
- `.tool-versions` – documents the expected Python runtime (handy for asdf users).

## Contributing

1. Confirm the new assets exist on the [VectRune release page](https://github.com/davethomas11/vectrune/releases).
2. Run `update_formula.py` locally or trigger the GitHub Action.
3. Submit a PR with the regenerated formula (or let the workflow push directly if you trust it).
4. Keep the tap focused on the current release unless you explicitly need versioned formulas.
