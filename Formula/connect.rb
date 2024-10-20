# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.61.0"
  depends_on :macos

  on_intel do
    url "https://releases.lab.dioad.net/data/connect/0.61.0/connect_darwin_amd64.zip", using: CurlDownloadStrategy
    sha256 "f59d2502f621947917e8e30d7ebbab676628786650acda3c9e0a4aa0ae96ccc6"

    def install
      bin.install "connect"
    end
  end
  on_arm do
    url "https://releases.lab.dioad.net/data/connect/0.61.0/connect_darwin_arm64.zip", using: CurlDownloadStrategy
    sha256 "d88b6c898861ae995e41b8aa5d520b634afb400de46fb1afaefe1d13a3abe124"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
