// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.4.3"
let package = Package(
    name: "ZohoDeskPortalChatKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalChatKit",
            targets: ["ZohoDeskPortalChatKit", "ZDChat", "ZohoPubSubSDK", "ZDOneChatSDK", "ZohoDeskPortalChatKitPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: version)
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalChatKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalChatKit/\(version)/ZohoDeskPortalChatKit.zip", checksum: "b63006a213caa661e65ab845d85e3654f45bdb6bae6878f429659cdac006c028"),
        
        .binaryTarget(name: "ZDChat", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/2.4.13/ZDChat.zip", checksum: "d20756b6db95bc4f1387fc0c6a33bf94e0d4f49cef46d9ec4f5b53054065e160"),
        
        .binaryTarget(name: "ZohoPubSubSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoPubSubSDK/iOS/1.2.10/framework/ZohoPubSubSDK.zip", checksum: "9e9ee51acbb827d86bed1976c9993f83c31ab57ac9bfa297f41b7e97641999e9"),
        
        .binaryTarget(name: "ZDOneChatSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/1.3.11/ZDOneChatSDK.zip", checksum: "5a4b50bf7e7935532091933236e6be2153ecd2f456b77b323eb4ff453ea5368e"),
                
        .target(
            name: "ZohoDeskPortalChatKitPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
