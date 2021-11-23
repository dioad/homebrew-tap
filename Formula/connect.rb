# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.8-gon-test45"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.8-gon-test45/dioad-connect-darwin-universal.zip", :using => CurlDownloadStrategy
    sha256 "8bc9144b14fa4276566abc9d8d601973948fab50e8cd25cb8999531efb29e01f"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
