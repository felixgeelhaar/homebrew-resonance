class Resonance < Formula
  desc "Terminal-native live coding music instrument"
  homepage "https://github.com/felixgeelhaar/resonance"
  license "MIT"
  version "0.1.0"

  on_macos do
    url "https://github.com/felixgeelhaar/resonance/releases/download/v0.1.0/resonance-macos-arm64.tar.gz"
    sha256 "6c31f5248f56aaa502d53e29166ee5d6c4c1b7e09c55e67b4384dd52af15099b"
  end

  on_linux do
    url "https://github.com/felixgeelhaar/resonance/releases/download/v0.1.0/resonance-linux-amd64.tar.gz"
    sha256 "b33c4efa3d0a7214c33d82e55ba54a80f4f6d756a9039b99fd29712643852a83"
  end

  def install
    bin.install "resonance"
  end

  test do
    assert_match "resonance", shell_output("#{bin}/resonance --version")
  end
end
