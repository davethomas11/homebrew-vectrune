class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.15"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.15/vectrune-macos-arm64.tar.gz"
      sha256 "b143e19a16f4da3369eb09c6114bd76ad7abe1215002c9aa6fba068f2ff25b41"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.15/vectrune-macos-x86_64.tar.gz"
      sha256 "0e298c42cd3e09d2ca32974a39348ed2684da1c15a5e5abb81fde898e93c9859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.15/vectrune-linux-arm64.tar.gz"
      sha256 "e7f2240b1b65178d76090c1e1874efa1b7ce23f9fbd02b427a4b99078287bd81"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.15/vectrune-linux-x86_64.tar.gz"
      sha256 "a9528cf4804ff9090a63cd5e339e1ff95eea77d5ac91fa994964676566cc8424"
    end
  end

  def install
    bin.install "vectrune"
  end
end
