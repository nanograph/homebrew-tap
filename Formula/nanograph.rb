class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "0.8.0"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v#{version}/nanograph-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "PLACEHOLDER"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
