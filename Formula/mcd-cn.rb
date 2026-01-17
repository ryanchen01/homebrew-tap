class McdCn < Formula
  desc "A small CLI client for the McDonald's China MCP server."
  homepage "https://github.com/ryanchen01/mcd-cn"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryanchen01/mcd-cn/releases/download/0.1.1/mcd-cn_0.1.1_darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/ryanchen01/mcd-cn/releases/download/0.1.1/mcd-cn_0.1.1_darwin_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryanchen01/mcd-cn/releases/download/0.1.1/mcd-cn_0.1.1_linux_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/ryanchen01/mcd-cn/releases/download/0.1.1/mcd-cn_0.1.1_linux_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "mcd-cn"
  end

  test do
    system "#{bin}/mcd-cn", "--version"
  end
end