class VibeClock < Formula
  desc "Track AI coding agent usage across Claude Code, Codex, Gemini CLI, and OpenCode"
  homepage "https://github.com/dexhunter/vibe-clock"
  url "https://github.com/dexhunter/vibe-clock/releases/download/v1.4.0/vibe-clock-darwin-arm64.tar.gz"
  sha256 "1a5bb04d6c2865141175e9adc5558ce4e75741c26b06c1e1dfc46ce19e8cfaaa"
  version "1.4.0"
  license "MIT"

  def install
    bin.install "vibe-clock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibe-clock --version")
  end
end
