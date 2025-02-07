// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.0.7"
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.0.7")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalChatKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalChatKit/\(version)/ZohoDeskPortalChatKit.zip", checksum: "b36b778ec462a1fe52dc6ae4b5e3136e54daee765d1265554472c12183d0501a"),
        
        .binaryTarget(name: "ZDChat", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/2.4.8/ZDChat.zip", checksum: "0e738e7fa93243d790ac76e654ffe8b2b31fcce8830b953cf7285dda9179e842"),
        
        .binaryTarget(name: "ZohoPubSubSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoPubSubSDK/iOS/1.2.9/framework/ZohoPubSubSDK.zip", checksum: "5db109908d90d8cf1f66828b83f6e1647eec729bb721cbd8c4bd272d6ee06e2f"),
        
        .binaryTarget(name: "ZDOneChatSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/1.3.4/ZDOneChatSDK.zip", checksum: "6a6288dbc7361160811eb0214aee185a744ff1ce477715ba80bc361f70e00aa7"),
        
        .binaryTarget(name: "ZDHelperKit", url: "https://static.zohocdn.com/zohodeskmobile/ZDHelperKit/iOS/1.0.2/ZDHelperKit.zip", checksum: "6279c5343f1019ae91834cef89a7d55dde0acffa44d6a00a463ce75dd92c21df"),
        
        .target(
            name: "ZohoDeskPortalChatKitPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
