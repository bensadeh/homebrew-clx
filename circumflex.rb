# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "1.18"
  license "AGPL-3.0-only"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.18/circumflex_1.18_macOS_64-bit.tar.gz"
      sha256 "801ce97005a27d2e8290c8c2d33e14a390fe82c228b44f230d8b2276faf00ccf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bensadeh/circumflex/releases/download/1.18/circumflex_1.18_macOS_arm64.tar.gz"
      sha256 "7aa7189940b7536a34eecb6307ab8b632f3e790c74c3e223eb641b0af25d066f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.18/circumflex_1.18_Linux_64-bit.tar.gz"
      sha256 "f6d63868b0a059dd968ee2ac68c82445f761c42067181d8b65f6d1646021ff8a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bensadeh/circumflex/releases/download/1.18/circumflex_1.18_Linux_arm64.tar.gz"
      sha256 "a626bb021e63939b6bdad3e3a7f7961864eed72af53526f7cc95ec6a23195add"
    end
  end

  depends_on "less"
  depends_on "lynx"

  def install
    bin.install "circumflex" => "clx"
  end
end
