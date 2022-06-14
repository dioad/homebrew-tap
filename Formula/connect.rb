# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.37.0"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.37.0/connect_darwin_all.tar.gz", :using => CurlDownloadStrategy
    sha256 "098ec008e3b3c6c42054c447f6be681daf6ce4cffbcba6ab41b5236d534621b2"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
