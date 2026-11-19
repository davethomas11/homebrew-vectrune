class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.11"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.11/vectrune-macos-arm64.tar.gz"
      sha256 "743730d77f664ecc22e26876191f8a58f706458597c571486a3f13e1bd1ea109"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.11/vectrune-macos-x86_64.tar.gz"
      sha256 "74edbe34f9af7bb60955d0e6c4677edd202a61702e0a486ad06c3088518932e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.11/vectrune-linux-arm64.tar.gz"
      sha256 "c08f0fc7d9b6b5ba5a53994fc0824a553fcc12f44960382814f07553f85e5bde"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.11/vectrune-linux-x86_64.tar.gz"
      sha256 "9b21306c68e1af2c96c970664c4bdf8bdb5eaac8069f60566703aa0b0ad94c28"
    end
  end

  def install
    bin.install "vectrune"
    # Older release archives contain only the binary.
    if (buildpath/"man").directory?
      man1.install "man/man1/vectrune.1"
      man7.install "man/man7/vectrune-language.7"
    end
  end
end
