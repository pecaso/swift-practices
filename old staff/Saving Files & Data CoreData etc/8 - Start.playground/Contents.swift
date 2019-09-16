import Foundation

let spaceSceneURL = Bundle.main.urls(forResourcesWithExtension: "png", subdirectory: "Scenes")
spaceSceneURL.lastPathComponent

extension FileManager {
  static func copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: String...) throws {
    for subdirectoryName in subdirectoryNames {
        let documentSubdirectoryURL = URL(fileURLWithPath: subdirectoryName, relativeTo: FileManager.documentDirectoryURL)
        
       try? FileManager.default.createDirectory(at: documentSubdirectoryURL, withIntermediateDirectories: false)
        
        guard let pngURLs = Bundle.main.urls(forResourcesWithExtension: "png", subdirectory: subdirectoryName)
            else {continue}
        
        for pngURL in pngURLs {
            let data = try Data(contentsOf: pngURL)
            try data.write(to: documentSubdirectoryURL.appendingPathComponent(pngURL.lastPathComponent), options: .atomic)
        }
    }
  }
}

try FileManager.copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: "Scenes","Stickers")
FileManager.documentDirectoryURL
