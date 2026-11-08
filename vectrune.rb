class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.13"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.13/vectrune-macos-arm64.tar.gz"
      sha256 "ac41eb7c22f95b9782fc209ef9119e894cc1002f27c5f18bbb30093d06465534"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.13/vectrune-macos-x86_64.tar.gz"
      sha256 "a609e744df3c740358fcb3975d73a4278c078506da9f637b98e219cfbb0136d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.13/vectrune-linux-arm64.tar.gz"
      sha256 "6e598fbbbd36770f3f5c42b1c00adf8e522b448ac740e6e5542a625ed49371d5"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.13/vectrune-linux-x86_64.tar.gz"
      sha256 "2302ba86c05e42f2a9ab6b6df581ccbaa78efc729f9db3beb752802cde15e4bc"
    end
  end

  def install
    bin.install "vectrune"
  end
end
