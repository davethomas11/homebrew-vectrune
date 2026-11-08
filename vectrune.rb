class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.14"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.14/vectrune-macos-arm64.tar.gz"
      sha256 "a273e5fbcb05624548ff80a03dca3f8da5cd2f23441b70ab4f558d7e76d635ea"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.14/vectrune-macos-x86_64.tar.gz"
      sha256 "7e7114ca23f0593091f7fa7f4fbf4b3165ec982058ecdc63bfa0e1490f45791a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.14/vectrune-linux-arm64.tar.gz"
      sha256 "b2f207e4273b72641f8ee125ccc65862750a8498e78e00aa2dd3bc70e2e3606a"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.14/vectrune-linux-x86_64.tar.gz"
      sha256 "307dd6e79f68e5862441ee6e95f1cb8bcb8ef0940bc6a3011d29bbc05c2319d2"
    end
  end

  def install
    bin.install "vectrune"
  end
end
