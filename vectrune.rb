class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.20"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.20/vectrune-macos-arm64.tar.gz"
      sha256 "0d1c8c397da6e61e57dde9cd93e51d839413e42b6e755d7b01cfe94b36e8882a"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.20/vectrune-macos-x86_64.tar.gz"
      sha256 "36268d44f43151bf0aea913a9d0dfb4843956b06d5c9b6b04a4dee58b1d4e0a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.20/vectrune-linux-arm64.tar.gz"
      sha256 "fb5b36732cdfb5909015573507d2f0acc4182a2a99621a4ffc7609af5c423cdf"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.20/vectrune-linux-x86_64.tar.gz"
      sha256 "4276be427d2a340000f7fafe29f714e6f72e350494685ca4be0b39f88889653f"
    end
  end

  def install
    bin.install "vectrune"
  end
end
