class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.5/vectrune-macos-arm64.tar.gz"
      sha256 "ed4a838e2d0c6442f8f8dd9eaa01bbefe26f8f33b91602a3e2ffa5d1199f8fd6"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.5/vectrune-macos-x86_64.tar.gz"
      sha256 "bafce0d4eb8eac8bb906d3de642af92196d86c62842c9e6c7dd627791df537fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.5/vectrune-linux-arm64.tar.gz"
      sha256 "ab3e1da13a40c1b60188d541b98c3518167c4c9044ca49d6fb24c676f9b2deca"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.5/vectrune-linux-x86_64.tar.gz"
      sha256 "8cb10c9cb3923ce8a321650dfc1dee749b116c90bc8e3c71cfb735959bd4fe4f"
    end
  end

  def install
    bin.install "vectrune"
  end
end
