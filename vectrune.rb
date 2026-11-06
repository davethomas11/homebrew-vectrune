class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.9/vectrune-macos-arm64.tar.gz"
      sha256 "cce44ebd1f59c8ca43a74566a353ca717fd0e2fa1a0461c35b7946c43d333f9b"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.9/vectrune-macos-x86_64.tar.gz"
      sha256 "59459d3838528215e85188d25dec1567807f1a5cd8388c38c5d5dd88b99945a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.9/vectrune-linux-arm64.tar.gz"
      sha256 "6edb222fe4ca96095e4081f7ee6dbac748e902b1330a1dc6f842dcfeb0ba979e"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.9/vectrune-linux-x86_64.tar.gz"
      sha256 "310f99accce7c3d0d7ad8485466be67c39dcbc8af3ea7bd9c68c67b36db1e869"
    end
  end

  def install
    bin.install "vectrune"
  end
end
