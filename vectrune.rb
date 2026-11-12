class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.1/vectrune-macos-arm64.tar.gz"
      sha256 "def9277e29c0a7ca51d9f0f18330c898a3676612648da64007591cdbb95d53d2"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.1/vectrune-macos-x86_64.tar.gz"
      sha256 "a3ea53ea82371953b145a534a895183f58ae1598a98b55d73e90ec44a8e0357e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.1/vectrune-linux-arm64.tar.gz"
      sha256 "ff2472fedce6a22a6de68c30f9b515db9210f13522aa1fc6f29e279455862abb"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.1/vectrune-linux-x86_64.tar.gz"
      sha256 "90e1f6cce02107c47ffc26a9dbfbb34abc2e90ed949a27fb485c47198c44c296"
    end
  end

  def install
    bin.install "vectrune"
  end
end
