# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.38.2"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.38.2/connect_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "d59aad95deb4604b560eb1f60d19e3b123a38d3f647d671aa404e8b7c9038c5d"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
