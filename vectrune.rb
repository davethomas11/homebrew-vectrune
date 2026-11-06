class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.10"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.10/vectrune-macos-arm64.tar.gz"
      sha256 "ab05255cfb730634be24ce6da1c337988cede5bde840da9b0ced883073c60192"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.10/vectrune-macos-x86_64.tar.gz"
      sha256 "d9423a94145cbf50fad6c93790c7ab8b427bac61ebcc61e9412e75411651d677"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.10/vectrune-linux-arm64.tar.gz"
      sha256 "4b71bd885c5172ebedaba758af38ace89fc1d87552afec08628cfa8191ae77b5"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.10/vectrune-linux-x86_64.tar.gz"
      sha256 "c08eb67b8958cd4aded5e3b85fd52b980f9c0994f4dd57fa1dc1730d9d550b9f"
    end
  end

  def install
    bin.install "vectrune"
  end
end
