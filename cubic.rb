class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.27.1.tar.gz"
  sha256 "e439538e9f7be9288e51277610ddefe3725ea9b5e8f048645a111a04bd9a5061"
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
