class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/nanograph/nanograph"
  version "0.10.1"
  license "MIT"

  url "https://github.com/nanograph/nanograph/releases/download/v0.10.1/nanograph-v0.10.1-aarch64-apple-darwin.tar.gz"
  sha256 "52fbbedbe2cce7d5c1577faddfdc3c8f6ac18099f6f6bc464bc864f6868c13d6"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
