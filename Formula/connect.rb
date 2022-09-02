# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.38.2-beta7"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.38.2-beta7/connect_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "581a6992a2e7f11d6a0eab77fae2750ca30fdfa89139f76d849763f69db0996a"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
