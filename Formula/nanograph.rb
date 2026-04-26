class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "1.2.2"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v1.2.2/nanograph-v1.2.2-aarch64-apple-darwin.tar.gz"
  sha256 "e4a0f790a296fb4ee8d6132b91663d9eb85eef5a939271c57063632517c2480e"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
