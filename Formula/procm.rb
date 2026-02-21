class Procm < Formula
  desc "Terminal process manager with sorting, filtering, and kill/restart"
  homepage "https://github.com/lovincyrus/procm"
  url "https://github.com/lovincyrus/procm/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "6cc1f1cfc8cd02d2c270eecba59d19b2b559cb835d3e7a2c43fe3a38d619f437"
  license "MIT"

  depends_on "bun"

  def install
    system "bun", "install"
    libexec.install Dir["*"]
    (bin/"procm").write <<~EOS
      #!/bin/bash
      exec "#{Formula["bun"].opt_bin}/bun" "#{libexec}/index.ts" "$@"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/procm --version 2>&1", 1)
  end
end
