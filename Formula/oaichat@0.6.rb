class oaichat06 < Formula
    desc "OpenAI API client written in Swift for macOS"
    homepage "https://github.com/TarballCoLtd/oaichat"
    url "https://github.com/TarballCoLtd/oaichat/archive/refs/tags/v0.6.tar.gz"
    sha256 "497b07b583d7fad536c30e0bb688db04c5b650fc3052c7fb7dc85b29d64bded2"
    license "MIT"
    depends_on "swift" => :build
    depends_on macos: :ventura
    def install
        system "swift", "build", "--disable-sandbox", "-c", "release"
        bin.install ".build/release/oaichat"
    end
end
