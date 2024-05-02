# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connect < Formula
  desc "Dioad Connect is an SNI based TCP reverse tunnel that provides end-to-end encrypted traffic whereever you need it."
  homepage "https://dioad.com/"
  version "0.58.2"
  depends_on :macos

  url "http://releases.lab.dioad.net/data/connect/0.58.2/connect_darwin_all.tar.gz", using: CurlDownloadStrategy
  sha256 "05e368ba0ee9014bdad67c17825a11a2692470861c70210dc2865f12152c900a"

  def install
    bin.install "connect"
  end

  test do
    system "#{bin}/connect --version"
  end
end
