cask "viewport" do
  on_arm do
    version "0.2.1"
    sha256 "6d79bdfa02e5d6fc8228cfc4768428ba06da815841191b6ca4ecf33e38db09ba"
    url "https://github.com/gracelungu/viewport-releases/releases/download/v0.2.1/Viewport-mac-arm64.zip"
  end
  on_intel do
    version "0.2.1"
    sha256 "a400d1e2efebef419346c5698e726ddd89441b15a9bcfc05b9db037e23466fa6"
    url "https://github.com/gracelungu/viewport-releases/releases/download/v0.2.1/Viewport-mac-x64.zip"
  end
  name "Viewport"
  desc "Local game studio with AI agents, Blender and Godot"
  homepage "https://openviewport.com"
  depends_on macos: :ventura
  preflight do
    odie "Viewport requires macOS 13.1 or newer" if MacOS.version < MacOSVersion.new("13.1")
  end
  app "Viewport.app"
end
