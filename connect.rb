# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.59.5"
  depends_on :macos

  url "http://releases.lab.dioad.net/data/connect/0.59.5/connect_darwin_all.tar.gz", using: CurlDownloadStrategy
  sha256 "d805b1af7947d8fc3a3ac210177319a7ff704fcb07f55636b8655e14daebb994"

  def install
    bin.install "connect"
  end

  test do
    system "#{bin}/connect --version"
  end
end
