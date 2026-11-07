class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.12"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.12/vectrune-macos-arm64.tar.gz"
      sha256 "fbf2b374cb020674c6bf3fedf9ea7999c533aeded94615e0b8c629dc0146c4c2"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.12/vectrune-macos-x86_64.tar.gz"
      sha256 "a0802802e944e3728f0435f0758859839f290a2117a0633f0a818d0ecc685145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.12/vectrune-linux-arm64.tar.gz"
      sha256 "bb656c71270a12882aa48ace160bac05fd1b7c8e1ae4b13f932d63cc575e4f8f"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.12/vectrune-linux-x86_64.tar.gz"
      sha256 "9289a75d37146293815a6bb6cb282227f6df2d5c7a1b1df41f568f2233f21987"
    end
  end

  def install
    bin.install "vectrune"
  end
end
