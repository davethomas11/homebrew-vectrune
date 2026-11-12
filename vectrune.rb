class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.2/vectrune-macos-arm64.tar.gz"
      sha256 "bf9e5ed5b825c4846d48fd07862f15978021cc15edcb7aa89f52575102fa6258"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.2/vectrune-macos-x86_64.tar.gz"
      sha256 "a9c0d33184e41d8857b66cf92514b56010f997678415ab05a3acde1b850caf3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.2/vectrune-linux-arm64.tar.gz"
      sha256 "b474d7002792de853e0bc5609f99ecd2f3a4918e2b87c44193faffa0f2969236"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.2/vectrune-linux-x86_64.tar.gz"
      sha256 "fc06fda5eaf6804abca12ce685dfc8dc793de2e9e9fc226680740da35ee70c6a"
    end
  end

  def install
    bin.install "vectrune"
  end
end
