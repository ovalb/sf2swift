# sf2swift

A simple command line tool to export SFSymbols (v.1) assets to Path objects in Swift UI.

For those who want to use SFSymbols targeting macOS versions pre 11.0.

## How to use it
1. Generate paths with `sf2swift -o icons`
2. Drag the generated `icons/` directory (or just the files you want) to your Xcode project.
3. In your swiftUI project you can use SfSymbols with camel-case naming. 

e.g. To display `play.circle.fill` at size 32x32p:
`PlayCircleFill().frame(width: 32, height: 32)`

## What the app does
SFSymbols get exported to SVG in a neat way -> then converted to Path objects.