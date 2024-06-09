// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ScreenZoom",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ScreenZoom",
            targets: ["screenZoomPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "screenZoomPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/screenZoomPlugin"),
        .testTarget(
            name: "screenZoomPluginTests",
            dependencies: ["screenZoomPlugin"],
            path: "ios/Tests/screenZoomPluginTests")
    ]
)