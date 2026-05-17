class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "1.3.0"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v1.3.0/nanograph-v1.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "eb3389795413733c80c4879e59c89f69273645bde613e5099d82ac62a30e466b"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
