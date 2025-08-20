# Formula/rulectl.rb
class Rulectl < Formula
  desc "Command-line tool for managing AI generated rules in Git repositories"
  homepage "https://github.com/actual-software/rulectl"
  license "MIT"  # Update with actual license

  version "0.2.0"  # This will be auto-updated by GitHub Actions
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/actual-software/rulectl/releases/download/v#{version}/rulectl-darwin-x86_64-v#{version}"
    sha256 "ce5317929d3d53be4df01e80b81870bc481e49a32bd4b7dcb0a9a4147cd5e57a"  # This will be auto-updated
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/actual-software/rulectl/releases/download/v#{version}/rulectl-darwin-aarch64-v#{version}"
    sha256 "8169614ed4dbc061ae83a09b0d6d8703ac72fbfe1b2f06ae8b9568e054377d4c"    # This will be auto-updated
  end

  def install
    if Hardware::CPU.intel?
      bin.install "rulectl-darwin-x86_64-v#{version}" => "rulectl"
    elsif Hardware::CPU.arm?
      bin.install "rulectl-darwin-aarch64-v#{version}" => "rulectl"
    end
  end

  test do
    # Test that the binary works
    assert_match version.to_s, shell_output("#{bin}/rulectl --version 2>&1", 1)
    
    # Test help command
    assert_match "Command-line tool", shell_output("#{bin}/rulectl --help")
  end
end