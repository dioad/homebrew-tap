# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.59.20"
  depends_on :macos

  on_intel do
    url "http://releases.lab.dioad.net/data/connect/0.59.20/connect_darwin_amd64.zip", using: CurlDownloadStrategy
    sha256 "619d8f48ae32f244270a7703d7e3560237117d011d9f23ff5ecccb2a3cfb5054"

    def install
      bin.install "connect"
    end
  end
  on_arm do
    url "http://releases.lab.dioad.net/data/connect/0.59.20/connect_darwin_arm64.zip", using: CurlDownloadStrategy
    sha256 "ed32615ef2365e51c262e23f414fb71dde52e723ef12932590e91efb76ec9e52"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
