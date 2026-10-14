class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.27.0.tar.gz"
  sha256 "d03c9dbdebb1dcdabc6b62d450ef5a6eb3fa9ae85a9af8b9a3fb8fbf13a36ea5"
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
