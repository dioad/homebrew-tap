# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.63.16"
  depends_on :macos

  on_intel do
    url "https://releases.lab.dioad.net/data/connect/0.63.16/connect_darwin_amd64.zip", using: CurlDownloadStrategy
    sha256 "f99f271f500d5d2fb83f74aba36cfbaddd36d56dd85215d52d0df5172385128f"

    def install
      bin.install "connect"
    end
  end
  on_arm do
    url "https://releases.lab.dioad.net/data/connect/0.63.16/connect_darwin_arm64.zip", using: CurlDownloadStrategy
    sha256 "bb3ff7dc403a72efd7d9dfa795a36bb06f4f1ce640dbebf49cf98845b59176d5"

    def install
      bin.install "connect"
    end
  end

  test do
    system "#{bin}/connect --version"
  end
end
