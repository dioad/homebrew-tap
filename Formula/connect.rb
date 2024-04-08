# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.57.1-1"
  depends_on :macos

  url "http://releases.lab.dioad.net/data/connect/0.57.1-1/connect_darwin_all.tar.gz", using: CurlDownloadStrategy
  sha256 "5797bb18250e71badc4681e5fbbf837f2034173d75eff3eb49882cbaa4a81f0b"

  def install
    bin.install "connect"
  end

  test do
    system "#{bin}/connect --version"
  end
end
