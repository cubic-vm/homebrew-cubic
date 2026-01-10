class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.17.0.tar.gz"
  sha256 "0a228bee9219680f6f75ed9ffacbaaf7c2030447c1adba1c393238242f317ed0"
  license "MIT OR Apache-2.0"

  depends_on "rust" => :build
  depends_on "cdrtools"
  depends_on "openssh"
  depends_on "qemu"

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/cubic"
  end

  test do
    system bin/"cubic", "ls"
  end
end
