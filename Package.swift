// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Pocpublish",
    products: [
        .executable(name: "Pocpublish", targets: ["Pocpublish"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.1.0"),
        .package(url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "Pocpublish",
            dependencies: ["Publish", "SplashPublishPlugin"]
        )
    ]
)
