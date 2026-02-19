class VibeClock < Formula
  desc "Track AI coding agent usage across Claude Code, Codex, and OpenCode"
  homepage "https://github.com/dexhunter/vibe-clock"
  url "https://github.com/dexhunter/vibe-clock/releases/download/v1.3.0/vibe-clock-darwin-arm64.tar.gz"
  sha256 "94ad5beae6be7b122a763686dea312f854c8c3480698a2dcd54eec904eb24ac1"
  version "1.3.0"
  license "MIT"

  def install
    bin.install "vibe-clock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibe-clock --version")
  end
end
