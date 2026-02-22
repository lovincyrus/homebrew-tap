class Procm < Formula
  desc "Terminal process manager with sorting, filtering, and kill/restart"
  homepage "https://github.com/lovincyrus/procm"
  version "0.0.2"
  license "MIT"

  on_arm do
    url "https://github.com/lovincyrus/procm/releases/download/v0.0.2/procm-darwin-arm64.tar.gz"
    sha256 "ea8bb42851c56e80dfd3da4bf4dfe4ad0efa7e04fca0765930d0f2a06c1968b9"
  end

  on_intel do
    url "https://github.com/lovincyrus/procm/releases/download/v0.0.2/procm-darwin-x86_64.tar.gz"
    sha256 "edef6405376034611156dc1690240c6e47ddc74fdb7d8a5a387eea0b7d09df8a"
  end

  def install
    bin.install "procm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/procm --version")
  end
end
