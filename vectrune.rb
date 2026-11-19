class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.9"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.9/vectrune-macos-arm64.tar.gz"
      sha256 "5b5e8ad8be7ae0f0db166c8219a7c55c67edb8d216b09ee9f5fe5e46098dbf06"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.9/vectrune-macos-x86_64.tar.gz"
      sha256 "d77eb50dd8e52b6c0336dd6884b9eb5ffef5c85549779d406de3502e4ad91d8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.9/vectrune-linux-arm64.tar.gz"
      sha256 "321977138ac94712c8c012d0a760abb48a280d1793a8b2cfa9479fc2e8a629ea"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.9/vectrune-linux-x86_64.tar.gz"
      sha256 "d10951d92acd82f42dcfe1e6dc1932da9a5a861f41e59af5c5917f89e1afba7c"
    end
  end

  def install
    bin.install "vectrune"
    # Older release archives contain only the binary.
    if (buildpath/"man").directory?
      man1.install "man/man1/vectrune.1"
      man7.install "man/man7/vectrune-language.7"
    end
  end
end
