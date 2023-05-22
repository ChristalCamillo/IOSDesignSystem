// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DesignSystem",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "DesignSystem", targets: ["DesignSystem"])
    ],
    targets: [
        .target(
            name: "DesignSystem",
            path:"DesignSystem/DesignSystem",
            resources: [.process("Resource/Colors.xcassets")]
        )
    ]
)
