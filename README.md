# homebrew-vectrune

This repository contains the Homebrew formula for installing the VectRune CLI tool on macOS (Intel & Apple Silicon) and Linux.

## Installation

First, add this tap:

```sh
brew tap davethomas11/vectrune
```

Then install VectRune:

```sh
brew install vectrune
```

## Supported Platforms

- macOS (Intel/x86_64 and Apple Silicon/arm64)
- Linux (x86_64)

The correct binary for your platform will be installed automatically.

## Updating the Formula

To update the formula to the latest release, run the provided script:

```sh
pip3 install requests
python3 update_formula.py
```

This script will:
- Fetch the latest release from GitHub
- Download each binary asset
- Compute the sha256 for each asset
- Update `vectrune.rb` with the new version, URLs, and sha256 values

## Contributing

If you want to update the formula for a new release, make sure the new binaries are available on the [VectRune GitHub Releases page](https://github.com/davethomas11/vectrune/releases), then run the update script as described above.

## License

See [VectRune project](https://github.com/davethomas11/vectrune) for license details.
