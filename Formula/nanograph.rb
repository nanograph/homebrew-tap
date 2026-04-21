class Nanograph < Formula
  desc "Embedded typed property graph database — no server, schema-as-code"
  homepage "https://github.com/nanograph/nanograph"
  version "1.2.1"
  license "MIT"

  url "https://github.com/nanograph/nanograph/releases/download/v1.2.1/nanograph-v1.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "075de511484ca17d32276a5ebf064d6632bbe0ac089ae67db203cf6f77314925"

  depends_on arch: :arm64

  def install
    bin.install "nanograph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanograph version")
  end
end
