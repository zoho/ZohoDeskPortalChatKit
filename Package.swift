// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.0.2"
let package = Package(
    name: "ZohoDeskPortalChatKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalChatKit",
            targets: ["ZohoDeskPortalChatKit", "ZDChat", "ZohoPubSubSDK", "ZDOneChatSDK", "ZDHelperKit", "ZohoDeskPortalChatKitPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalChatKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalChatKit/\(version)/ZohoDeskPortalChatKit.zip", checksum: "23c403880c09f81f8af348d6ed293f05b97b2b9a084d32f0ee7cab58cead198b"),
        
        .binaryTarget(name: "ZDChat", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/2.4.7/ZDChat.zip", checksum: "696e4bea55cf0bf18f1e993a886095bd318ffed62d0315d337863220e35d6ab0"),
        
        .binaryTarget(name: "ZohoPubSubSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoPubSubSDK/iOS/1.2.9/framework/ZohoPubSubSDK.zip", checksum: "5db109908d90d8cf1f66828b83f6e1647eec729bb721cbd8c4bd272d6ee06e2f"),
        
        .binaryTarget(name: "ZDOneChatSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/1.3.3/ZDOneChatSDK.zip", checksum: "89e94d6e4b2649c14ea6b89c9b4e27f3091851c388cdf6792073b1b86df0e67f"),
        
        .binaryTarget(name: "ZDHelperKit", url: "https://static.zohocdn.com/zohodeskmobile/ZDHelperKit/iOS/1.0.2/ZDHelperKit.zip", checksum: "6279c5343f1019ae91834cef89a7d55dde0acffa44d6a00a463ce75dd92c21df"),
        
        .target(
            name: "ZohoDeskPortalChatKitPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
