# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.60.3"
  depends_on :macos

  on_intel do
    url "https://releases.lab.dioad.net/data/connect/0.60.3/connect_darwin_amd64.zip", using: CurlDownloadStrategy
    sha256 "b7f089964a4ec11a02f7cace1c338760e0c6b955cf3cfaa3c9a7b2f8509fd472"

    def install
      bin.install "connect"
    end
  end
  on_arm do
    url "https://releases.lab.dioad.net/data/connect/0.60.3/connect_darwin_arm64.zip", using: CurlDownloadStrategy
    sha256 "f3c0f0bcba572abead7443de0daf0488d735238d0b6e39def537fb4f75807d1a"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
