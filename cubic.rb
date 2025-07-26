class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "8d5cdd7b3db652a3b097f46b8b30df40cd3058a700bfdfeb02356304a28c1542"
  license "GPL-2.0-only"

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
