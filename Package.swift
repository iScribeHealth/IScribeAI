// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "IScribeAI",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "IScribeAI",
            targets: ["IScribeAI", "IScribeAIDependencies"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/amplitude/AmplitudeCore-Swift.git", from: "1.4.1"),
    ],
    targets: [
        .binaryTarget(
            name: "IScribeAI",
            path: "Sources/IScribeAISDK.xcframework.zip"
        ),
        .target(
            name: "IScribeAIDependencies",
            dependencies: [
                .product(name: "AmplitudeCoreFramework", package: "AmplitudeCore-Swift"),
            ],
            path: "Sources/IScribeAI"
        )
    ]
)
