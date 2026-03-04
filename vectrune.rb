class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.4/vectrune-macos-arm64.tar.gz"
      sha256 "2d60a1bd3d350f0e23aae343e4652156cb447a51be37ae16a6b0e63515f639ae"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.4/vectrune-macos-x86_64.tar.gz"
      sha256 "e8e780e9f841591b710fbed53e81f69c5fd76b823506111b3f07dd849bd96005"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.4/vectrune-linux-arm64.tar.gz"
      sha256 "024f84d3b0574a7caab6c8cc56b53e0e96d0a547474f7c16d8f92e2e48af926c"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.4/vectrune-linux-x86_64-musl.tar.gz"
      sha256 "711a052adf0c7a6aa9fc3e444610a406e7821f2cca9696df022e6cf5bcdb85da"
    end
  end

  on_windows do
    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.1.4/vectrune.exe-windows-x86_64.tar.gz"
      sha256 "f823a8259b79d443ea590170e63db8b7a5f50b20aae97fadeb5ad16f94e1e881"
    end
  end

  def install
    bin.install "vectrune"
  end
end
