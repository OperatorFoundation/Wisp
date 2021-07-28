// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Wisp",
    
    platforms: [
        .macOS(.v11),
        .iOS(.v14)],
    
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Wisp",
            targets: ["Wisp"])],
    
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.4.0"),
        .package(url: "https://github.com/OperatorFoundation/Datable.git", from: "3.0.4"),
        .package(url: "https://github.com/OperatorFoundation/Elligator.git", from: "0.1.1"),
        .package(url: "https://github.com/OperatorFoundation/HKDF.git", from: "3.1.0"),
        .package(name: "Sodium", url: "https://github.com/OperatorFoundation/swift-sodium.git", .branch("scalarMult")),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.4.2"),
        .package(url: "https://github.com/OperatorFoundation/SwiftQueue.git", from: "0.1.0"),
        .package(url: "https://github.com/OperatorFoundation/Transmission.git", from: "0.2.3"),
        .package(url: "https://github.com/OperatorFoundation/Transport.git", from: "2.3.5")],
    
    targets: [
        .target(
            name: "Wisp",
            dependencies: [
                "CryptoSwift",
                "Datable",
                "Elligator",
                "HKDF",
                "Sodium",
                "SwiftQueue",
                "Transmission",
                "Transport",
                .product(name: "Logging", package: "swift-log")]),
        .testTarget(
            name: "WispTests",
            dependencies: ["Wisp"]),],
    
    swiftLanguageVersions: [.v5]
)
