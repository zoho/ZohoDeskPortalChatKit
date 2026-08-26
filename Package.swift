// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("4.6.6")
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
        .binaryTarget(name: "ZohoDeskPortalChatKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalChatKit/\(version.description)/ZohoDeskPortalChatKit.zip", checksum: "38b2afe9c7b1ebaec9fcb103ed694cf9070ef9b78e17d3837639f9da5b36ffd4"),
        
        .binaryTarget(name: "ZDChat", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/2.6.2/ZDChat.zip", checksum: "f3e55c890997411dce2795339662156ff661f3bc3ac2ed0eee89e3263ba1b807"),
        
        .binaryTarget(name: "ZohoPubSubSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoPubSubSDK/iOS/1.3.0/framework/ZohoPubSubSDK.zip", checksum: "7bac396e2ae30ea50186aed8f7d2bbfff23f71a5974c38bd05e372116f65912f"),
        
        .binaryTarget(name: "ZDOneChatSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/1.5.2/ZDOneChatSDK.zip", checksum: "0f02f8bd1b47014f7d79350c9a5e8a1a8617406861542a8a0122846e65e86a51"),
                
        .target(
            name: "ZohoDeskPortalChatKitPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
