// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Blog",
    products: [
        .executable(name: "Blog", targets: ["Blog"]),
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", .branch("master")),
        .package(name: "SplashPublishPlugin", url: "https://github.com/johnsundell/splashpublishplugin", .branch("master")),
    ],
    targets: [
        .target(
            name: "Blog",
            dependencies: [
                "Publish",
                "SplashPublishPlugin",
            ]
        ),
    ]
)
