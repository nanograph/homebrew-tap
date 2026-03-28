class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "1.1.1"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v1.1.1/nanograph-v1.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "4fb8d14bda6cd3e2d484a711b282b035fbbfffa4f88ae1ad1ba43dbab95b720e"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
