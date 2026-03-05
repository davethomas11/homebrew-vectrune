class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.5/vectrune-macos-arm64.tar.gz"
      sha256 "5914136f82c1ddd8262a988446ddc4c7f26c210d2e9f87bbe7ffb76dbf76d246"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.5/vectrune-macos-x86_64.tar.gz"
      sha256 "c2ccc15edb0869bf2a1a22c0d2d8a49e316e4d118d8097f074b881929e325b4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.5/vectrune-linux-arm64.tar.gz"
      sha256 "5703b5854651f904a40ad8fa5857c4c888449c8eacbeffb1f997e16e5cdfde30"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.5/vectrune-linux-x86_64.tar.gz"
      sha256 "f57fc9dbe70023f9a07268909b348fc5d99b65434dc33e95bb4d058e574fa835"
    end
  end

  def install
    bin.install "vectrune"
  end
end
