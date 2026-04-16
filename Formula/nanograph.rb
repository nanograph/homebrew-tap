class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/nanograph/nanograph"
  version "1.2.0"
  license "MIT"

  url "https://github.com/nanograph/nanograph/releases/download/v1.2.0/nanograph-v1.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "177c78f13f158382bc029dc56e4ebee140b4cfe67931a6413046c71d52d986af"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
