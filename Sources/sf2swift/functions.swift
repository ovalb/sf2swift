import Path

func getPathFromOutputOption(from str: String?) -> Path {
    if let str = str {
            return Path(str) ?? Path.cwd/str
        } else {
            return Path.cwd/""
        }    
} 

func extractSVG(to path: Path) {
    print("to implement")
}

func checkSVG(in path: Path) {
    print("to implement")
}

func convertToShape(in path: Path) {
    print("to implement")
}