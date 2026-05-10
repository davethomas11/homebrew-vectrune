class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.5/vectrune-macos-arm64.tar.gz"
      sha256 "61ebd0c594b3fe751ca162204ad6b1ee4382eb4920cf10fa13f4e7e96222bc37"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.5/vectrune-macos-x86_64.tar.gz"
      sha256 "d5219565ca9c23b8a41b051736535e2f622cb24d281b0fe82b2c572e9bc24210"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.5/vectrune-linux-arm64.tar.gz"
      sha256 "dd10eb685098246cdf69d6904bb6ad022d579a53262d74cb0ecfd28b544e8752"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.5/vectrune-linux-x86_64.tar.gz"
      sha256 "b13da0875bc01015db82f2b8961b7e86c17ecb0d3095298ca1263a8f6ea66ee1"
    end
  end

  def install
    bin.install "vectrune"
  end
end
