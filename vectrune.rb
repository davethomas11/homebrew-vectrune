class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.3/vectrune-macos-arm64.tar.gz"
      sha256 "752bdf0c465c3113aced739f930e8fac365e3bc7f4b2743c6c2cf16f27a14ba8"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.3/vectrune-macos-x86_64.tar.gz"
      sha256 "bce508f1ac67578b98cda9c467e100bd46eec0459627b122ec8bbbc91cc64806"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.3/vectrune-linux-arm64.tar.gz"
      sha256 "1a17e6f62660cdb99ed463854c3e36abbc8ca9d30809d84fa5e5a9a1fc733f59"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.3/vectrune-linux-x86_64.tar.gz"
      sha256 "ddcbe0bd1ab91bfb4a70874f85c5e40dbb5633693af5c0dec63c0890aaec6aca"
    end
  end

  def install
    bin.install "vectrune"
  end
end
