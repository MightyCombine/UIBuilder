// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIBuilder",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "UIBuilder",
            targets: ["UIBuilder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/MightyCombine/MightyCombine.git", from: "1.0.2"),
    ],
    targets: [
        .target(
            name: "UIBuilder",
            dependencies: ["MightyCombine"]),
        .testTarget(
            name: "UIBuilderTests",
            dependencies: ["UIBuilder"]),
    ]
)
