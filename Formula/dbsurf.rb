class Dbsurf < Formula
  desc "TUI database explorer with vim-style navigation"
  homepage "https://github.com/jdtoombs/dbsurf"
  version "0.1.0-alpha"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jdtoombs/dbsurf/releases/download/v0.1.0-alpha/dbsurf_0.1.0-alpha_darwin_amd64.tar.gz"
      sha256 "fc6d6b6b313c8f1e8c3939a51f4a0cf846c46c3a8185e7d2fbf2e6cdcd9a1a27"
    end
    on_arm do
      url "https://github.com/jdtoombs/dbsurf/releases/download/v0.1.0-alpha/dbsurf_0.1.0-alpha_darwin_arm64.tar.gz"
      sha256 "47e037e841b59657dbdd6efc8801205dc741b8273375ee198bb3748d0e56b919"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdtoombs/dbsurf/releases/download/v0.1.0-alpha/dbsurf_0.1.0-alpha_linux_amd64.tar.gz"
      sha256 "73b70373aae199cb011f7b0d74e12afdf61ca10e02a8d4290f1bf82c4cf56f03"
    end
    on_arm do
      url "https://github.com/jdtoombs/dbsurf/releases/download/v0.1.0-alpha/dbsurf_0.1.0-alpha_linux_arm64.tar.gz"
      sha256 "b23ba4de37fefe1d88584caf9de6a7cd48795c5d3a9367f136a86684302c2447"
    end
  end

  def install
    bin.install "dbsurf"
  end

  test do
    system "#{bin}/dbsurf", "--version"
  end
end
