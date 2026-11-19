class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.10"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.10/vectrune-macos-arm64.tar.gz"
      sha256 "bc67cfc1f23400b2468f745188f0fdc7fc1b4c68ff2cb8585e1cb53df7f1b96c"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.10/vectrune-macos-x86_64.tar.gz"
      sha256 "71637a82b3000ac96c478ec572117d17b2a4fc46dd66fbae0da35bfa73bde6a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.10/vectrune-linux-arm64.tar.gz"
      sha256 "c29b86ec5f070da070bf0c2391bfb44f4ae7bcc80f7f7ead68defa3ede291476"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.10/vectrune-linux-x86_64.tar.gz"
      sha256 "f18741fc7d0515347a3067366ce884ab90e14a43f80fafc4208a62b260255e16"
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
