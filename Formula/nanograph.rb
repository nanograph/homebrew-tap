class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "1.2.1"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v1.2.1/nanograph-v1.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "2f56a9f6f224dac4c4df678e8388874865c5529d89df8a72baa42185ae26838c"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
