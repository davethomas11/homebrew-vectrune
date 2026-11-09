class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.18"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.18/vectrune-macos-arm64.tar.gz"
      sha256 "28fd8247b84b25b8048dd8ba1ccd0e95b610e7c518f99f0cd63b2f908aef3851"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.18/vectrune-macos-x86_64.tar.gz"
      sha256 "d9fd98e66ae80872ac61f5f105d0759b204a3e185f343089996e2b3bd7a61f42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.18/vectrune-linux-arm64.tar.gz"
      sha256 "15c4e6ed074a9042a2002fffd1f0d226d71e9972c56823a53ed74cff37c50a35"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.18/vectrune-linux-x86_64.tar.gz"
      sha256 "7765b9c9e06ec3947646f01ab1756497293d008c55e8319bd0f0a44adbd8a7ea"
    end
  end

  def install
    bin.install "vectrune"
  end
end
