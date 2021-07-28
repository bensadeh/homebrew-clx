# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "1.17"
  license "AGPL-3.0-only"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.17/circumflex_1.17_macOS_64-bit.tar.gz"
      sha256 "0240286addc2d12461ef6348d4e4440e94ad6ad8211a9cb4d2b22d39bd98794b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bensadeh/circumflex/releases/download/1.17/circumflex_1.17_macOS_arm64.tar.gz"
      sha256 "401ca75f1c55302f6e3125ce4925d8d4a6ea8d02d34ce470a87651c63599c577"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.17/circumflex_1.17_Linux_64-bit.tar.gz"
      sha256 "d2b399db3fc5984a4aa461859b82b79597edea82977f51b839306ad3a43fb094"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bensadeh/circumflex/releases/download/1.17/circumflex_1.17_Linux_arm64.tar.gz"
      sha256 "6e0dd7303a9e2b355aa923b528ad9645d0cd749fa2f67cece34ae5283cc5dfdf"
    end
  end

  depends_on "less"
  depends_on "lynx"

  def install
    bin.install "circumflex" => "clx"
  end
end
