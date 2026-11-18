class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.6/vectrune-macos-arm64.tar.gz"
      sha256 "760fd457baee9c042771a1510c3b2167e2145e7e85e5e70b5d69bed7745d9b90"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.6/vectrune-macos-x86_64.tar.gz"
      sha256 "8af90ecdf25c21a6be8a3aa3ae2dc79f7bf673985dd2dd676fb418797fd308ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.6/vectrune-linux-arm64.tar.gz"
      sha256 "26f8dd64eea021ff779c4953cf369c30ab02f8ecb412d62920acdf3e2b1df3af"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.6/vectrune-linux-x86_64.tar.gz"
      sha256 "883eb4347bb5dacc85aa9f893ffc4be14d7654c3793c5ae1cb3f7decc171afd1"
    end
  end

  def install
    bin.install "vectrune"
    # Older release archives contain only the binary.
    if (buildpath/"man").directory?
      man1.install "man/man1/vectrune.1"
      man7.install "man/man7/vectrune-language.7"
    end
  end
end
