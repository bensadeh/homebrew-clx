# This file was generated by GoReleaser. DO NOT EDIT.
class Clx < Formula
  desc "circumflex is Hacker News on the command line"
  homepage ""
  version "0.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bensadeh/circumflex/releases/download/0.1.2/circumflex_0.1.2_Darwin_x86_64.tar.gz"
    sha256 "1d31b7299a7d3858ea674891df23fd3cb31cc0f78da0295bbb38b476bf148b90"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/0.1.2/circumflex_0.1.2_Linux_x86_64.tar.gz"
      sha256 "1c4f42f32490b02a362f76691a446601b2f3cce609de9bc767f8d10347254db0"
    end
  end

  def install
    bin.install "clx"
  end
end
