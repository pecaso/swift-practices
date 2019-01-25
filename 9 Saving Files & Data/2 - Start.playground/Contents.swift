import Foundation

FileManager.documentDirectoryURL.path

let mysteryDataURL = URL(fileURLWithPath: "mystery", relativeTo: FileManager.documentDirectoryURL)
mysteryDataURL.path

let stringURL = FileManager.documentDirectoryURL.appendingPathComponent("string").appendingPathExtension("txt")
stringURL.path

let challengeString = "low F#"
let challengeStringURL = URL(fileURLWithPath: challengeString, relativeTo: FileManager.documentDirectoryURL).appendingPathExtension("txt")



//write data to pathURL
let mysteryBytes: [UInt8] = [
    240, 159, 152, 184,
    240, 159, 152, 184,
    240, 159, 152, 184,
    240, 159, 152, 184,
]

let mysteryData = Data(mysteryBytes)
//try mysteryData.write(to: mysteryDataURL)
try mysteryData.write(to: mysteryDataURL.appendingPathExtension("txt"))

let savedMysteryData = try Data(contentsOf: mysteryDataURL.appendingPathExtension("txt"))
savedMysteryData == mysteryData

// read data as string data
let string = String(data: savedMysteryData, encoding: .utf8)
// write the string data to file named string.txt
let stringurl = FileManager.documentDirectoryURL.appendingPathComponent("string").appendingPathExtension("txt")

try string!.write(to: stringurl, atomically: true, encoding: .utf8)
try String(contentsOf: stringurl)

// Challenge
let challengeString1 = "low F# challenge"
let challengeString1URL = URL(
    fileURLWithPath: challengeString1,
    relativeTo: FileManager.documentDirectoryURL
    ).appendingPathExtension("txt")

let challengeString1Data = challengeString1.data(using: .utf8)
try challengeString1Data?.write(to: challengeString1URL, options: .atomic)

// read string without data
let readString = try String(contentsOf: challengeString1URL)






