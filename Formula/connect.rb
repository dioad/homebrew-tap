# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.43.0"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.43.0/connect_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "24369b73e2b4700bc339268a6240261c448a5463920692421bf1b9bb470473c5"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
