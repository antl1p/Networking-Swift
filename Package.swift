// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Networking-Swift",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "Networking-Swift",
            targets: ["NetworkingCore", "URLSessionClientAdapter"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NetworkingCore",
            dependencies: []),
        .testTarget(
            name: "NetworkingCoreTests",
            dependencies: ["NetworkingCore"]),
        .target(
            name: "URLSessionClientAdapter",
            dependencies: ["NetworkingCore"]),
        .testTarget(
            name: "URLSessionClientAdapterTests",
            dependencies: ["NetworkingCore", "URLSessionClientAdapter"]),
    ]
)
