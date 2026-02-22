class VibeClock < Formula
  desc "Track AI coding agent usage across Claude Code, Codex, and OpenCode"
  homepage "https://github.com/dexhunter/vibe-clock"
  url "https://github.com/dexhunter/vibe-clock/releases/download/v1.4.0/vibe-clock-darwin-arm64.tar.gz"
  sha256 "4f8660a16c861df33b4eaef0445c8b9b0b82b42ae5ae2b3d6ad7bb1a744645cf"
  version "1.4.0"
  license "MIT"

  def install
    bin.install "vibe-clock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibe-clock --version")
  end
end
