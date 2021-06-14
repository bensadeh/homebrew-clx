# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "1.12"
  license "AGPL-3.0-only"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.12/circumflex_1.12_macOS_64-bit.tar.gz"
      sha256 "3dd8f0a81bb1d7cbb948bc25a8f1037738f43250bddeb3035636715e96e1fc34"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bensadeh/circumflex/releases/download/1.12/circumflex_1.12_macOS_arm64.tar.gz"
      sha256 "faf8936ef8a2aa579b8f9b43a009bb12492f4ae5e9cad03d921c6ade09d6b360"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.12/circumflex_1.12_Linux_64-bit.tar.gz"
      sha256 "82ce0324f4cf852ccd8ee98f055933441dc77800b69bec38527bf263d50c4844"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bensadeh/circumflex/releases/download/1.12/circumflex_1.12_Linux_arm64.tar.gz"
      sha256 "f4680d1eb05e6e42a99584455c3d702877683f812ae2d959f5f5a6d5d80dd6eb"
    end
  end

  depends_on "less"
  depends_on "lynx"

  def install
    bin.install "circumflex" => "clx"
  end
end
