// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "marcocapano",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🍃 An expressive, performant, and extensible templating language built for Swift.
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
        
        // Vapor plugin for type-safe, transformable HTML views using swift-html.
        .package(url: "https://github.com/pointfreeco/swift-html-vapor.git", from: "0.1.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Leaf", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

