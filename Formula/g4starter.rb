# typed: false
# frozen_string_literal: true

class G4starter < Formula
  desc "Interactive CLI tool for generating Geant4 simulation projects"
  homepage "https://github.com/evandde/G4Starter"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/evandde/G4Starter/releases/download/v0.3.0/G4Starter_mac"
    sha256 "8bbd39784692997dc42c3ef5862b1a8c12279b6bfffb770c70896f59f28e8062"
  end

  def install
    bin.install "G4Starter_mac" => "g4starter"
  end

  test do
    system "#{bin}/g4starter", "--help"
  end
end
