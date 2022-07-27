class Murray < Formula
  desc "Command Line Interface to create skeleton apps and add file templates"
  homepage "https://github.com/synesthesia-it/Murray"
  url "https://github.com/synesthesia-it/Murray/archive/refs/tags/2.3.1.tar.gz"
  sha256 "4fc9e95827af67e2677a954065569aebfb64bc6976789fb783df8bd0bf2493c4"
  license "MIT"

  depends_on xcode: ["12.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/#{name}"
  end

  test do
    system "#{bin}/murray", "--help"
  end
end
