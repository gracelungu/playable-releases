cask "viewport" do
  on_arm do
    version "0.2.0"
    sha256 "cdae6c414d1f3bfa9f4392a2b67db7e8d5a1179191ae1b95ed1254be8ab3c8fd"
    url "https://github.com/gracelungu/viewport-releases/releases/download/v0.2.0/Viewport-mac-arm64.zip"
  end
  on_intel do
    version "0.2.0"
    sha256 "1241ef42c61a5104ea451f906a59719362c24be382b30d44187a1a24d97aa00a"
    url "https://github.com/gracelungu/viewport-releases/releases/download/v0.2.0/Viewport-mac-x64.zip"
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
