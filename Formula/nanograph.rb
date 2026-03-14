class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "1.0.0"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v1.0.0/nanograph-v1.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "3180f151ca9285c5249bbbdc52e212ec0d71925eedd2453c4485d8edaad0b881"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
