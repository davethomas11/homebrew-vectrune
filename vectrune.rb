class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.7"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.7/vectrune-macos-arm64.tar.gz"
      sha256 "7bb0f9cce290953031046a2c0122ab1766eb808a6f892e8aec654fae2fdf025b"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.7/vectrune-macos-x86_64.tar.gz"
      sha256 "ccd6c3886e8d29b0027d0eeb36ea4dd51a1a7d857483675e75a60cd755b23169"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.7/vectrune-linux-arm64.tar.gz"
      sha256 "1f1a110335a55d5cdebc7d252fbab2016a9f8ce1101e5f7cc2cd5ba509a799c4"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.7/vectrune-linux-x86_64.tar.gz"
      sha256 "2460fca0d2827868443689e6263c0504ed6d22a919365f77becd58598e678f8c"
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
