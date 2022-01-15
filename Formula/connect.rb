# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.31"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.31/connect_darwin_all.tar.gz", :using => CurlDownloadStrategy
    sha256 "43e043ac54e7f91eea60e73d6c8cef6f457a5ff7f47f7ab14ab6b8a048787126"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
