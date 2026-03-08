class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/aaltshuler/nanograph"
  version "0.9.1"
  license "MIT"

  url "https://github.com/aaltshuler/nanograph/releases/download/v0.9.1/nanograph-v0.9.1-aarch64-apple-darwin.tar.gz"
  sha256 "043f1eab15a3318066e3051328d6b26c8992207f67d6f6f1305ee64414e560c0"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
