class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.17"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.17/vectrune-macos-arm64.tar.gz"
      sha256 "af512cde1ffa9fda9fff4fc1b702450d6b8b614532be4ee404671296c9f4e6fd"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.17/vectrune-macos-x86_64.tar.gz"
      sha256 "d6ad16dd4daee9ce6c580ae72c34bdc4b22e5aeb35fca0b505f288e6fa4b6c5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.17/vectrune-linux-arm64.tar.gz"
      sha256 "2d821ae9d8cd127b3be122fd1528930d25a2b814382502ae98d8d042fbeab516"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.17/vectrune-linux-x86_64.tar.gz"
      sha256 "b0a38897b86f48ee722566138ec02916ed830c664641c094fe4fa02fa69b087d"
    end
  end

  def install
    bin.install "vectrune"
  end
end
