class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.3.8"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.8/vectrune-macos-arm64.tar.gz"
      sha256 "655451a3688f5b9ca0dfa2b8fd0b200821a56480fdae7739bfebcc9a45da1b5e"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.8/vectrune-macos-x86_64.tar.gz"
      sha256 "e24b0386893414a2e96b6c44ef21be752cd2bbdfc489b3f7a2610e158b133ae6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.8/vectrune-linux-arm64.tar.gz"
      sha256 "fc964e5eced76352e9b81adb9d3ba1c39289e8c33c08af13c95a8ef702148ded"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.3.8/vectrune-linux-x86_64.tar.gz"
      sha256 "85fe3f7f7ec867ad5f46e709461d764ceeb965b35360966dcfe92611b4c68c23"
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
