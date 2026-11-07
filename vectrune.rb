class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.11"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.11/vectrune-macos-arm64.tar.gz"
      sha256 "0f373c8a32bbca263a54066c2a7e41b1740ec6d5c785981e8bb3af79bf86b404"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.11/vectrune-macos-x86_64.tar.gz"
      sha256 "c408df2a8b1484f063c2c523e52fb2c138d4e9e48126d0ead8457a9dfb71d906"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.11/vectrune-linux-arm64.tar.gz"
      sha256 "14c125d867f6c824ccdc4febadb2ed1ed4386c0b156f6ed1d8b2af51d991551f"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.11/vectrune-linux-x86_64.tar.gz"
      sha256 "3d4c97a9d4d0cd9ced7413c545776cfa913a63d1fd876b9dca5f65c6f8f1449a"
    end
  end

  def install
    bin.install "vectrune"
  end
end
