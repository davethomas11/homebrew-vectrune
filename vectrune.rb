class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.0/vectrune-macos-arm64.tar.gz"
      sha256 "94f48d2e5464690aa49e505d1fca316a2cc77cc235169a89b5c0f3e4d6f2851a"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.0/vectrune-macos-x86_64.tar.gz"
      sha256 "0ee7e1f49ec2541d28a752c6ec6102251e539ebfe21adba4c3cd75554f55f8ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.0/vectrune-linux-arm64.tar.gz"
      sha256 "3fa418b1af14784980d79d05841fc7610d766ec189ae21061141c23f8fe0721b"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.0/vectrune-linux-x86_64.tar.gz"
      sha256 "1ad2882c57b69a020c0002b03492a726715a6146cc29aac6069d4089d6039ee8"
    end
  end

  def install
    bin.install "vectrune"
  end
end
