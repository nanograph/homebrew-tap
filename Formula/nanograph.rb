class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "0.9.1"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v0.9.1/nanograph-v0.9.1-aarch64-apple-darwin.tar.gz"
  sha256 "033cbd31be5f5e392639508a83bee82bc09126c07f0ee54bb601d1811a174a67"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
