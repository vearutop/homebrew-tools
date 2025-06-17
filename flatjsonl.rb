class Flatjsonl < Formula
  desc "flatjson is a tool to extract and flatten JSONL into CSV or SQL"
  homepage "https://github.com/vearutop/flatjsonl"
  version "0.9.5"

  on_macos do
    on_arm do
      url "https://github.com/vearutop/flatjsonl/releases/download/v0.9.5/darwin_arm64.tar.gz"
      sha256 "ee9facb610bdca4f1ecd2bf65e284a737d6a1de26db9ac444d859816e4b0a1a3"
    end
    on_intel do
      url "https://github.com/vearutop/flatjsonl/releases/download/v0.9.5/darwin_amd64.tar.gz"
      sha256 "f93a529114ef43e7f62900fd1bd0988ae716796b0cd9c8595e9e6f2a3ce99dac"
    end
  end

  
  def install
    bin.install "flatjsonl"
  end

  test do
    system "#{bin}/flatjsonl", "-version"
  end
end
