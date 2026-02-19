# homebrew-vectrune

This repository hosts the Homebrew tap for the VectRune CLI binaries that are built in `davethomas11/vectrune`.

## Install

```sh
brew tap davethomas11/homebrew-vectrune
brew install vectrune
```

Homebrew automatically selects the correct binary:
- macOS Apple Silicon (`on_macos` + `on_arm`)
- macOS Intel (`on_macos` + `on_intel`)
- Linux x86_64 (`on_linux` + `on_intel`, glibc preferred over musl)

Additional Linux ARM binaries can be added as soon as they appear on the release page—the formula already has the `on_linux`/`on_arm` hooks.

## Updating the formula

There is a helper script that pulls the latest GitHub release, downloads every published archive, recomputes the SHA-256 checksums, and rewrites `vectrune.rb`.

```sh
python3 -m pip install --upgrade requests
GITHUB_TOKEN="<token with repo scope>" python3 update_formula.py
```

Providing `GITHUB_TOKEN` keeps API calls authenticated so the script does not hit the anonymous rate limit while downloading assets.

Homebrew taps typically track only the latest stable release. Publish a new release in `davethomas11/vectrune`, rerun the script (or workflow below), and bump the formula—no need to keep older releases around unless you want a `@previous` formula.

## Contributing

1. Confirm the new release assets exist on the [VectRune release page](https://github.com/davethomas11/vectrune/releases).
2. Run `update_formula.py` locally or trigger the GitHub Action.
3. Open a PR with the regenerated `vectrune.rb` if the automation did not push directly.

## License

See the upstream [VectRune project](https://github.com/davethomas11/vectrune) for license information.
