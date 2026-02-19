class VibeClock < Formula
  desc "Track AI coding agent usage across Claude Code, Codex, and OpenCode"
  homepage "https://github.com/dexhunter/vibe-clock"
  url "https://github.com/dexhunter/vibe-clock/releases/download/v1.2.1/vibe-clock-darwin-arm64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "1.2.1"
  license "MIT"

  def install
    bin.install "vibe-clock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibe-clock --version")
  end
end
