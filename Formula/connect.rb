# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.68.0"
  depends_on :macos

  on_intel do
    url "https://releases.lab.dioad.net/data/connect/0.68.0/connect_darwin_amd64.zip", using: CurlDownloadStrategy
    sha256 "4ca9ef713c2cc2b1a4ed34544b8e7a9656b40b105d708421fd98b24bd9d20380"

    def install
      bin.install "connect"
    end
  end
  on_arm do
    url "https://releases.lab.dioad.net/data/connect/0.68.0/connect_darwin_arm64.zip", using: CurlDownloadStrategy
    sha256 "1999cb5531fedca487e3d87834d78423182d6da21fada3485e4ff0ef317b209a"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
