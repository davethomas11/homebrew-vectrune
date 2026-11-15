class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.4/vectrune-macos-arm64.tar.gz"
      sha256 "b6639fd4504a616bbd431ecf2a271a12998bc5ee6327ad5fb187524cad296fc7"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.4/vectrune-macos-x86_64.tar.gz"
      sha256 "40fac618d234e7607bdb8d8f336f29b45d63232b8e2699e3e688e39ceae7d4cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.4/vectrune-linux-arm64.tar.gz"
      sha256 "6351217e8aa2153802680515fad8fcb459c62e00d53951f6f9eb01558f1579a2"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.4/vectrune-linux-x86_64.tar.gz"
      sha256 "76adc9c82668a686c5dbcc6967b5cf206a1b1bf9e2fa6282fd3d25a1361448bd"
    end
  end

  def install
    bin.install "vectrune"
  end
end
