import Foundation

try FileManager.copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: "Scenes", "Stickers")

let stickers = [Sticker(name: "David Meowie",birthday: DateComponents(calendar: .current,year: 1947, month: 1, day: 8).date!,normalizedPosition: CGPoint(x: 0.3, y: 0.5),imageName: "cat"),
Sticker(name: "Samouse", birthday: DateComponents(calendar: .current, year: 1995, month: 12, day: 23).date!, normalizedPosition: CGPoint(x: 0.3, y: 0.2), imageName: "mouse")
]


do {
    let jsonURL = URL(fileURLWithPath: "sticker", relativeTo: FileManager.documentDirectoryURL.appendingPathComponent("Stickers")).appendingPathExtension("json")
    let jsonEncoder = JSONEncoder()
    jsonEncoder.outputFormatting = .prettyPrinted
    let jsonData = try jsonEncoder.encode(stickers)
    try jsonData.write(to: jsonURL)
    let jsonDecoder = JSONDecoder()
    let savedJSONData = try Data(contentsOf: jsonURL)
    let jsonSticker = try jsonDecoder.decode([Sticker].self, from: savedJSONData)
    print(jsonSticker)
    jsonSticker == stickers
}catch {print(error)}

//Challenge
let sticker2 = Sticker(name: "yasin", birthday: DateComponents(calendar: .current, year: 1996, month: 05, day: 27).date!, normalizedPosition: CGPoint(x: 0.4, y: 0.4), imageName: "parrot")
do {
    let jsonURL = URL(fileURLWithPath: "sticker", relativeTo: FileManager.documentDirectoryURL.appendingPathComponent("challenge")).appendingPathExtension("json")
    let jsonEncoder = JSONEncoder()
    jsonEncoder.outputFormatting = .prettyPrinted
    let jsonData = try jsonEncoder.encode(sticker2)
    try jsonData.write(to: jsonURL)
    let jsonDecoder = JSONDecoder()
    let savedJSONData = try Data(contentsOf: jsonURL)
    let jsonSticker = try jsonDecoder.decode(Sticker.self, from: savedJSONData)
    print(jsonSticker)
    jsonSticker == sticker2
    
}catch{print(error)}


FileManager.documentDirectoryURL


