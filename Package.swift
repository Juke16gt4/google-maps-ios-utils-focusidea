// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GoogleMapsUtils",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "GoogleMapsUtils",
            targets: ["GoogleMapsUtils"]
        )
    ],
    dependencies: [
        // GoogleMaps SDK 本体は CocoaPods 管理なのでここには書かない
    ],
    targets: [
        .target(
            name: "GoogleMapsUtils",
            path: "src"
        ),
        .testTarget(
            name: "GoogleMapsUtilsTests",
            dependencies: ["GoogleMapsUtils"],
            path: "tests"
        )
    ]
)