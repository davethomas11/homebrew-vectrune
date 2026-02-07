class VectRune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.1/vectrune-macos-arm64.tar.gz"
      sha256 "de8b393ab0dce42cb50322f06e23bd4b4941dd5455f23edf9d2855f8f7dbcc9f"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.1/vectrune-macos-x86_64.tar.gz"
      sha256 "fac1e739aff168bb7befc4b52651d37b58f5448f373a16244b5b880764cf0e15"
    end
  end

  on_linux do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.1/vectrune-linux-x86_64.tar.gz"
      sha256 "544fd677c283a3a3adc906f36e3efc83ff4fb91fe951ab034e413801a35aa7e4"
  end

  def install
    bin.install "vectrune"
  end
end