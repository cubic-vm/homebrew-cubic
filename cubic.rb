class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.18.0.tar.gz"
  sha256 "040327af6e965e27df0db0b4e5974ca01b17b43190e16312dace2d5c4b549873"
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
