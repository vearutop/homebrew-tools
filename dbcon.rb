class Dbcon < Formula
  desc "dbcon is a web-based AI-enabled SQL console tailored for sharing and reporting"
  homepage "https://github.com/vearutop/dbcon"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/vearutop/dbcon/releases/download/v0.4.2/darwin_arm64.tar.gz"
      sha256 "a5c2501b198d0cd9717a09503c9f049f5cfd2b9719aff200c1f85850907d1005"
    end
    on_intel do
      url "https://github.com/vearutop/dbcon/releases/download/v0.4.2/darwin_amd64.tar.gz"
      sha256 "e7603dff110ed0a3b7df3765d3e44caf096bfe780be0513123f095842da73984"
    end
  end

  
  def install
    bin.install "dbcon"
  end

  test do
    system "#{bin}/dbcon", "-version"
  end
end
