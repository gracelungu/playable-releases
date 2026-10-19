cask "playable" do
  on_arm do
    version "0.1.7"
    sha256 "79e207a7b1679263fe7e82ca2bdb2f0deb4a14737e9b8de744c4febaa07c68cf"
    url "https://github.com/gracelungu/playable-releases/releases/download/v0.1.7/Playable-mac-arm64.zip"
  end
  on_intel do
    version "0.1.7"
    sha256 "cd6857c094b1ca7c7cc9e37dfe2cb95a9f26ba0c1c181d539d6f684e4e05da46"
    url "https://github.com/gracelungu/playable-releases/releases/download/v0.1.7/Playable-mac-x64.zip"
  end
  name "Playable"
  desc "Local game studio with AI agents, Blender and Godot"
  homepage "https://playable-website-free-projects-0e54be6d.vercel.app"
  depends_on macos: :ventura
  preflight do
    odie "Playable requires macOS 13.1 or newer" if MacOS.version < MacOSVersion.new("13.1")
  end
  app "Playable.app"
end
