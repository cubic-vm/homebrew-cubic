class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "083d06a1b51295a48b49d9eae96b9ab1d4d62b318973a625e47b698c56dc1478"
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
