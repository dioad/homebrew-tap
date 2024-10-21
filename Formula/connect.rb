# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.62.0"
  depends_on :macos

  on_intel do
    url "https://releases.lab.dioad.net/data/connect/0.62.0/connect_darwin_amd64.zip", using: CurlDownloadStrategy
    sha256 "ce5bd210e9c3ca92392d5146082e261e6bb0c1fc63283ea6467ca3e180b03699"

    def install
      bin.install "connect"
    end
  end
  on_arm do
    url "https://releases.lab.dioad.net/data/connect/0.62.0/connect_darwin_arm64.zip", using: CurlDownloadStrategy
    sha256 "6b296c3714ecefc182be8a1212ab1d9da9fedec3d854bf7f044903f3662fa0d6"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
