class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.26.0.tar.gz"
  sha256 "d09066ecda111e2b2d29dc5023786d9a306b58c830dc87effac7cb4a09b4d11a"
  license "MIT OR Apache-2.0"

  depends_on "rust" => :build
  depends_on "qemu"

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/cubic"
  end

  test do
    system bin/"cubic", "instances"
  end
end
