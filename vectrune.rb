class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.8"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.8/vectrune-macos-arm64.tar.gz"
      sha256 "05c3211b474d42c541dd9a43ea771decb270a2c5d9257170dbb78d26a3e26e28"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.8/vectrune-macos-x86_64.tar.gz"
      sha256 "ec3fc4698b322c795055d475c6b0b03b1e27b5d51842b0592341aec657cd7fff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.8/vectrune-linux-arm64.tar.gz"
      sha256 "25c97a47ccdfe7eb5e8bf54b2abd46bf9e7524b273487297c7168c94135ac016"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.8/vectrune-linux-x86_64.tar.gz"
      sha256 "d69dcaf767c7a5ded0158b6a0625ee40441bbe0fc39ba4e69edc0b7f4c24a8af"
    end
  end

  def install
    bin.install "vectrune"
  end
end
