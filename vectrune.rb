class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.1/vectrune-macos-arm64.tar.gz"
      sha256 "19ca54e80fc1f5b05b4ad22f6a7bcdee3eb5f576be755a8bdb687a1cc4701cbc"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.1/vectrune-macos-x86_64.tar.gz"
      sha256 "02dd3ffbd2ef26cded9bbfd727c94a41c64ea29ee2a9f4676365d7de83d8707e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.1/vectrune-linux-arm64.tar.gz"
      sha256 "6a0ded054767c9d6672fe6c241f611e8939fd47a58c42ce2c1299f5d5fa098c4"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.1/vectrune-linux-x86_64.tar.gz"
      sha256 "a2eb5a856f7ab33e17b7e7aeb2f151cadbc3d4e1344b5efc352670d6874cbf70"
    end
  end

  def install
    bin.install "vectrune"
  end
end
