class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.7"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.7/vectrune-macos-arm64.tar.gz"
      sha256 "a9cfd174ec1d2c4ef223b45ab62b49b1e5604d3d36b4293e533e125f613fe503"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.7/vectrune-macos-x86_64.tar.gz"
      sha256 "fa8ea3f95914a5917b9aaa625c9bc55e5cc8a603aa52bc2d2c484632b1255d93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.7/vectrune-linux-arm64.tar.gz"
      sha256 "1b4d9d0b89c46bd1bc69e2e7462b20f2e944c3e017896a411929f4364e36fd84"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.7/vectrune-linux-x86_64.tar.gz"
      sha256 "babdf5748b62e7e54b2ad07adef9e439e5dfd17d14c504220651fda888fddb7f"
    end
  end

  def install
    bin.install "vectrune"
  end
end
