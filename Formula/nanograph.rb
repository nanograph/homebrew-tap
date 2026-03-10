class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "0.10.0"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v0.10.0/nanograph-v0.10.0-aarch64-apple-darwin.tar.gz"
  sha256 "b896486c9b11f93c5fc2343b392477c48beca91c911a6a81c6e444df8c4644b6"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
