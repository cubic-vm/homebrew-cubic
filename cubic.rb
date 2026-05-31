class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.23.0.tar.gz"
  sha256 "24a59f8c444ade283633b92adffb9b75fb0a8e4295bb661c3e46eebdfcd667ee"
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
