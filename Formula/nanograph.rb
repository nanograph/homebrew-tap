class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "0.8.1"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v0.8.1/nanograph-v0.8.1-aarch64-apple-darwin.tar.gz"
  sha256 "a096691e97a41fbb3ed4fc687932c6febe1ebdceaa46fc4c6d93e0ede4dc2b60"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
