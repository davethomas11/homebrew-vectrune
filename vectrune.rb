class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.2/vectrune-macos-arm64.tar.gz"
      sha256 "7b14f39992207baa8a29d6a7ab90fbb84d6aeef907b1bbc9fb19632545721fec"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.2/vectrune-macos-x86_64.tar.gz"
      sha256 "81b32c8f6d5eb759c25c08a2873c2120e40c0d1061c7f97b971f3b766f3de22a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.2/vectrune-linux-arm64.tar.gz"
      sha256 "14c89cc2ba1b46ab7d1dc80020736a48e98c800e8d38d623a0007271e8d02c09"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.2/vectrune-linux-x86_64.tar.gz"
      sha256 "8ef7352fbe33ab4bce6f46a5a5a5a44ff78e92d2818fff5e1dabba537297abc4"
    end
  end

  def install
    bin.install "vectrune"
  end
end
