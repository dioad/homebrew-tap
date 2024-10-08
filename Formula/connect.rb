# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.60.2"
  depends_on :macos

  on_intel do
    url "https://releases.lab.dioad.net/data/connect/0.60.2/connect_darwin_amd64.zip", using: CurlDownloadStrategy
    sha256 "362ff7e6067100e7985338c2eb417ad217f2b2397446bbf2a01529c7fae8b118"

    def install
      bin.install "connect"
    end
  end
  on_arm do
    url "https://releases.lab.dioad.net/data/connect/0.60.2/connect_darwin_arm64.zip", using: CurlDownloadStrategy
    sha256 "4c7101305076290ed4515b82f3997f3939ad3c0db33a1a4a2374975bccaa7bdf"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
