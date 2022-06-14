# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.37.2"
  depends_on :macos

  on_macos do
    url "http://releases.lab.dioad.net/data/connect/0.37.2/connect_darwin_all.tar.gz", :using => CurlDownloadStrategy
    sha256 "a6a0221497ac0de8fd577ba40dc726504b8fb8983b4e72ba1d58155733759dea"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
