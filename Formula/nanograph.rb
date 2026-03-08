class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "0.9.1"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v0.9.1/nanograph-v0.9.1-aarch64-apple-darwin.tar.gz"
  sha256 "40412bbb27bbde7469e268f9b13041bdae769940433f017517899f2f44f6dc36"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
