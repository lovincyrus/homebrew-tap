class Procm < Formula
  desc "Terminal process manager with sorting, filtering, and kill/restart"
  homepage "https://github.com/lovincyrus/procm"
  version "0.0.2"
  license "MIT"

  on_arm do
    url "https://github.com/lovincyrus/procm/releases/download/v0.0.2/procm-darwin-arm64"
    sha256 "69b6bbc6315cea823b59268f1eba1188626b9ca05a9a3c8b0ca3ae7eb94dbdfd"
  end

  on_intel do
    url "https://github.com/lovincyrus/procm/releases/download/v0.0.2/procm-darwin-x86_64"
    sha256 "a5586517a9bb2cf056c13dc562e1e062d02ed9044c2843cb3d81a16db8d66604"
  end

  def install
    bin.install "procm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/procm --version")
  end
end
