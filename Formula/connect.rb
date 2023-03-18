# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.41.3"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.41.3/connect_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "7928890d4ad6de345127f354c4f22f5174366d8ae640bb4b5f75e4a0e2f96b29"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
