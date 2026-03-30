class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "1.1.2"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v1.1.2/nanograph-v1.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "96c43db4f3d3d43ed1efdecb5a1333f8d5633927e7fb9c1080c8ee6a180755df"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
