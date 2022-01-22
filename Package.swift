// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Networking",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Networking",
            targets: ["NetworkingCore", "AlamofireAdapter", "URLSessionClientAdapter"]),
    ],
    dependencies: [
         .package(url: "https://github.com/Alamofire/Alamofire", from: "5.5.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "NetworkingCore",
            dependencies: []),
        .testTarget(
            name: "NetworkingCoreTests",
            dependencies: ["NetworkingCore"]),
        .target(
            name: "AlamofireAdapter",
            dependencies: ["NetworkingCore", "Alamofire"]),
        .testTarget(
            name: "AlamofireAdapterTests",
            dependencies: ["AlamofireAdapter"]),
        .target(
            name: "URLSessionClientAdapter",
            dependencies: ["NetworkingCore"]),
        .testTarget(
            name: "URLSessionClientAdapterTests",
            dependencies: ["URLSessionClientAdapter"]),
    ]
)
