class Dbcon < Formula
  desc "dbcon is a web-based AI-enabled SQL console tailored for sharing and reporting"
  homepage "https://github.com/vearutop/dbcon"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/vearutop/dbcon/releases/download/v0.4.0/darwin_arm64.tar.gz"
      sha256 "32c04d58f2e3ead1324620a7860e03f8264d7bbc2b398c7c2370fc41276c9699"
    end
    on_intel do
      url "https://github.com/vearutop/dbcon/releases/download/v0.4.0/darwin_amd64.tar.gz"
      sha256 "9ee59561ac037ade7adc42a2decd894b8367d78608adac645887e2080920d3c3"
    end
  end

  
  def install
    bin.install "dbcon"
  end

  test do
    system "#{bin}/dbcon", "-version"
  end
end
