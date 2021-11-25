# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.10"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.10/connect_darwin_all.tar.gz", :using => CurlDownloadStrategy
    sha256 "9556b5ea59061ce06b9bd4418d95657a0a803b10dc2000ca25dd91241e5fe120"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
