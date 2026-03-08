class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "0.9.0"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v0.9.0/nanograph-v0.9.0-aarch64-apple-darwin.tar.gz"
  sha256 "b2e633567d21e254bea7432847e902334b98bf905d42765bcec44e07088c6793"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
