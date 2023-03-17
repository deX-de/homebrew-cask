cask "downie" do
<<<<<<< HEAD
  version "4.6.10,4528"
  sha256 "1599c5a835c0664bd8fe4aebfe964ea5391c689c77cd33a6d9a13928eb38e459"
||||||| parent of 28a44313be (downie)
  version "4.6.7,4516"
  sha256 "e426b8ce51280bdd39ed764e45bc12d5f4a992fa693a9beca333494b7ef3cbcd"
=======
  version "4.6.11,4533"
  sha256 "752d17a5185d8770289a3548dc77b0d3b0f4c8e6afbd6108871c542e04a75933"
>>>>>>> 28a44313be (downie)

  url "https://software.charliemonroe.net/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.csv.second}.dmg"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://software.charliemonroe.net/downie.php"

  livecheck do
    url "https://software.charliemonroe.net/trial/downie/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Downie #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}-Downie-Extension",
    "~/Library/Preferences/com.charliemonroe.Downie-#{version.major}.plist",
  ]
end
