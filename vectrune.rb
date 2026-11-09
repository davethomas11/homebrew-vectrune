class Vectrune < Formula
  desc "VectRune CLI tool"
  homepage "https://github.com/davethomas11/vectrune"
  version "0.2.16"

  on_macos do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.16/vectrune-macos-arm64.tar.gz"
      sha256 "4e3d7fda1c738366bf1a97430c48e9159e721e0926d00cff92273604fe9ed154"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.16/vectrune-macos-x86_64.tar.gz"
      sha256 "55ede8884a0d066a08777617cf00241832b794de1fa08c0740c293566082491b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.16/vectrune-linux-arm64.tar.gz"
      sha256 "2a232467d86f7b22a1789295ffd6d9b9547adf8b0694f2086abfc7389ebba987"
    end

    on_intel do
      url "https://github.com/davethomas11/vectrune/releases/download/v0.2.16/vectrune-linux-x86_64.tar.gz"
      sha256 "34c21ddcf06f9adba356a284732998c235bb0880a9fa3718909c1ec6ab1faa79"
    end
  end

  def install
    bin.install "vectrune"
  end
end
