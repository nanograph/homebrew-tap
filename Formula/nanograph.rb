class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "1.3.1"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v1.3.1/nanograph-v1.3.1-aarch64-apple-darwin.tar.gz"
  sha256 "7e97f590f4ff5917d5dee5833790b077e81fc7bbe3137d2b896007f36a5967e6"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
