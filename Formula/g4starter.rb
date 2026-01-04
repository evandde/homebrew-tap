# typed: false
# frozen_string_literal: true

class G4starter < Formula
  desc "Interactive CLI tool for generating Geant4 simulation projects"
  homepage "https://github.com/evandde/G4Starter"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/evandde/G4Starter/releases/download/v0.2.0/G4Starter_mac"
    sha256 "b0845d3afda46f92825a44f2d8f383ba1f7f0ffae874fae8b26f30b080b84123"
  end

  def install
    bin.install "G4Starter_mac" => "g4starter"
  end

  test do
    system "#{bin}/g4starter", "--help"
  end
end
