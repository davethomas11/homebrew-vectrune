class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.19"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.19/vectrune-macos-arm64.tar.gz"
      sha256 "5179537a2d7e579cf0c6966e5842e1f8eb8f0b1e9a0bab8715e6e41cac43f512"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.19/vectrune-macos-x86_64.tar.gz"
      sha256 "b006b44f68c83120c2bcfdf4761954d347cf86926dbd132c2e54aa857c587f4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.19/vectrune-linux-arm64.tar.gz"
      sha256 "e5066d6f13eacded38c4b9736dcf8287cb001bfc5b27714ea5b07c26dec9fb0c"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.19/vectrune-linux-x86_64.tar.gz"
      sha256 "31e3f70f44aa96a91239eee33b52916e98f01410f5b7e2cfeff9c6a62c1a3bee"
    end
  end

  def install
    bin.install "vectrune"
  end
end
