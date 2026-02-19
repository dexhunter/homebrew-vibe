class VibeClock < Formula
  include Language::Python::Virtualenv

  desc "Track AI coding agent usage across Claude Code, Codex, and OpenCode"
  homepage "https://github.com/dexhunter/vibe-clock"
  url "https://files.pythonhosted.org/packages/a4/de/ddb2f4f1fbdb6a7ab49b1ad6ae2f7704bbeb428f3e80d88cfed775cbf73f/vibe_clock-1.2.1.tar.gz"
  sha256 "9dd97acfd3398f0dc85c3a2a69be5ab3aa5ecf8e60ed6098030473a618d30e78"
  license "MIT"

  depends_on "python@3.13"

  def install
    python3 = "python3.13"
    venv = virtualenv_create(libexec, python3)
    venv.pip_install_and_link buildpath
    bin.install_symlink libexec/"bin/vibe-clock"
  end

  # Install all dependencies from PyPI wheels in post_install to:
  # 1. Use a single pip call (~5s) instead of 16 individual sdist builds (~50s)
  # 2. Avoid Homebrew's dylib relocation fixer on pydantic-core's .so file
  def post_install
    system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python",
           "install", "--no-deps", "--only-binary=:all:",
           "annotated-types==0.7.0",
           "anyio==4.12.1",
           "certifi==2026.1.4",
           "click==8.3.1",
           "h11==0.16.0",
           "httpcore==1.0.9",
           "httpx==0.28.1",
           "idna==3.11",
           "markdown-it-py==4.0.0",
           "mdurl==0.1.2",
           "pydantic==2.12.5",
           "pydantic-core==2.41.5",
           "pygments==2.19.2",
           "rich==14.3.2",
           "socksio==1.0.0",
           "typing-extensions==4.15.0",
           "typing-inspection==0.4.2"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibe-clock --version")
  end
end
