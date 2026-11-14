class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.3/vectrune-macos-arm64.tar.gz"
      sha256 "8a2e38a0e17006c21c89735e9c9547dbc801e44706866d0359513cbd7956c2bc"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.3/vectrune-macos-x86_64.tar.gz"
      sha256 "b87a51d7fe69683f94781bd53f033a194f85efe644fab47f3899157974bbd892"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.3/vectrune-linux-arm64.tar.gz"
      sha256 "76dfdab23824ead5e690b914a29d4ba886aa9a34af72adfb57d2ff6415315898"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.3/vectrune-linux-x86_64.tar.gz"
      sha256 "ba56c61ec9facc05fd7093dfe9c75bf0728dcae4d4824d4dccb2f0cd6ecf45a7"
    end
  end

  def install
    bin.install "vectrune"
  end
end
