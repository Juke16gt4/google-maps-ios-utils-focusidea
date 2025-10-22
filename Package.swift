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
    dependencies: [],
    targets: [
        .target(
            name: "GoogleMapsUtils",
            path: "src"   // ソースコードのあるフォルダに合わせる
        ),
        .testTarget(
            name: "GoogleMapsUtilsTests",
            dependencies: ["GoogleMapsUtils"],
            path: "tests" // テストフォルダに合わせる
        )
    ]
)