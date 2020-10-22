# This file was generated by GoReleaser. DO NOT EDIT.
class Kubefwd < Formula
  desc "Kubernetes bulk port forwarding utility."
  homepage "https://github.com/txn2/kubefwd"
  version "1.14.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/txn2/kubefwd/releases/download/1.14.7/kubefwd_1.14.7_macOS_x86_64.tar.gz"
    sha256 "b3ebf290cfa9e6b74bc3b5a015d54d7a9df95b21e0117207e2116f55c43c31ff"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/txn2/kubefwd/releases/download/1.14.7/kubefwd_1.14.7_linux_x86_64.tar.gz"
      sha256 "8c5008ea1400597aafe7147ffa965180747fa4663d15574108548a8caf522525"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
      else
        url "https://github.com/txn2/kubefwd/releases/download/1.14.7/kubefwd_1.14.7_linux_arm.tar.gz"
        sha256 "0cc7f1425fe22470037550a4d0834f35a4a95fe21b1f9045aeab2612e7061f96"
      end
    end
  end

  def install
    bin.install "kubefwd"
  end
end
