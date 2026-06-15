// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "AFNetworkActivityLogger",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "AFNetworkActivityLogger",
            targets: ["AFNetworkActivityLogger"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking.git", from: "4.0.1")
    ],
    targets: [
        .target(
            name: "AFNetworkActivityLogger",
            dependencies: ["AFNetworking"],
            path: "AFNetworkActivityLogger",
            publicHeadersPath: ""
        )
    ]
)
