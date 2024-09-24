// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "IScribeAI",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "IScribeAI",
            targets: ["IScribeAI"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "IScribeAI", 
            path: "Sources/IScribeAISDK.xcframework.zip"
        )
    ]
)
