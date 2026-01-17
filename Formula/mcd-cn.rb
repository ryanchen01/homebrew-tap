class McdCn < Formula
  desc "A small CLI client for the McDonald's China MCP server."
  homepage "https://github.com/ryanchen01/mcd-cn"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryanchen01/mcd-cn/releases/download/v#{version}/mcd-cn_#{version}_darwin_arm64.tar.gz"
      sha256 "288558bccff653c3b45fb90bbc1779aa6514679087cfa5db7f27c09c0a2a9400"
    else
      url "https://github.com/ryanchen01/mcd-cn/releases/download/v#{version}/mcd-cn_#{version}_darwin_amd64.tar.gz"
      sha256 "11b775bfcba880573d70711fe478ef1a958ba5f8685d66ffd051cf45c789e10f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ryanchen01/mcd-cn/releases/download/v#{version}/mcd-cn_#{version}_linux_arm64.tar.gz"
      sha256 "f17373c897cda62676e6ffe12cd1e501fe099afe05df752dbdec47a1e8be6f63"
    else
      url "https://github.com/ryanchen01/mcd-cn/releases/download/v#{version}/mcd-cn_#{version}_linux_amd64.tar.gz"
      sha256 "675d1d4c3ffcf300c75d566b4db81f16d72aff3192b6433b8a3c5f864c409159"
    end
  end

  def install
    bin.install "mcd-cn"
  end

  test do
    system "#{bin}/mcd-cn", "--version"
  end
end