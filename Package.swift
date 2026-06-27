// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MPVFramework",
    platforms: [
        .iOS(.v14),
        .macOS(.v12),
        .tvOS(.v17)
    ],
    products: [
        .library(name: "MPVFramework", type: .dynamic, targets: ["MPVFramework"])
    ],
    dependencies: [
        .package(url: "https://github.com/mpvkit/MPVKit.git", from: "0.41.0")
    ],
    targets: [
        .target(
            name: "MPVFramework",
            dependencies: [
                .product(name: "MPVKit", package: "MPVKit")
            ],
            path: "Sources"
        )
    ]
)
