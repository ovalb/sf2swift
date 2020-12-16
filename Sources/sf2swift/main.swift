import ArgumentParser
import Path

struct Sf2swift: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "A Swift command-line tool to export SFSymbols to SwiftUI Paths objects")
    init() { }

    @Option(name: .shortAndLong, help: "The directory where the files will be exported (default is current directory)")
    private var output: String?

    func run() throws {
        // check if sfsymbols is installed, otherwise bye
        guard Path("/Applications/SF Symbols.app") != nil else {
            print("Install SFSymbol (v.1)")
            print("https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/")
            return
        }
        print("symbols should be installed")
        let path = getPathFromOutputOption(from: output)
        print("output directory will be in \(path)")
        extractSVG(to: path)
        checkSVG(in: path)
        convertToShape(in: path)


    }
}

Sf2swift.main()