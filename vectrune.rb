class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.6/vectrune-macos-arm64.tar.gz"
      sha256 "aee89599f64fdef81a1c9ac34fd80b64191709515513b11b5b1039b0942d7da5"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.6/vectrune-macos-x86_64.tar.gz"
      sha256 "da3a4343101cbee1e9a313afc73e15da19d1855629d3e73b854fc066961b1ad8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.6/vectrune-linux-arm64.tar.gz"
      sha256 "edc6f14a1fcf2b6360113538b3fab3e950b7dc70c81da9347c2143702531dc57"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.6/vectrune-linux-x86_64.tar.gz"
      sha256 "7c6037b55e18c221803e2bb2d8d4e09cf23b9d560f8dd3a744446b7026adeb5c"
    end
  end

  def install
    bin.install "vectrune"
  end
end
