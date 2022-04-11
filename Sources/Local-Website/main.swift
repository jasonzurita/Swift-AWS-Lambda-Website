// Use this when doing local dev to see what the website will look like.
// The generated website will be located in Artifacts as index.html
// Usage: Go to root directory then `swift run Local-Website`
import Foundation
import GenerateWebsite

let artifactsDirectory = FileManager.default.currentDirectoryPath + "/Artifacts"
let outputFilePath = artifactsDirectory + "/index.html"

let html = generateWebsite() // This is a free function from the `GenerateWebsite` module

guard let fileHandle = FileHandle(forWritingAtPath: outputFilePath) else {
    try? FileManager.default.createDirectory(atPath: artifactsDirectory,
                                             withIntermediateDirectories: false,
                                             attributes: nil)
    try? html.write(toFile: outputFilePath, atomically: true, encoding: .utf8)
    exit(1)
}

fileHandle.truncateFile(atOffset: 0)

if let data = html.data(using: .utf8) {
    fileHandle.write(data)
}
