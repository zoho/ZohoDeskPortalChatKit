// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.4.2"
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
        .binaryTarget(name: "ZohoDeskPortalChatKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalChatKit/\(version)/ZohoDeskPortalChatKit.zip", checksum: "a949688ca297a95ee7c10addc7e1c974788aea643c167ee4eeb75ea7704e5b82"),
        
        .binaryTarget(name: "ZDChat", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/2.4.13/ZDChat.zip", checksum: "d20756b6db95bc4f1387fc0c6a33bf94e0d4f49cef46d9ec4f5b53054065e160"),
        
        .binaryTarget(name: "ZohoPubSubSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoPubSubSDK/iOS/1.2.10/framework/ZohoPubSubSDK.zip", checksum: "9e9ee51acbb827d86bed1976c9993f83c31ab57ac9bfa297f41b7e97641999e9"),
        
        .binaryTarget(name: "ZDOneChatSDK", url: "https://maven.zohodl.com/ZohoDesk/ZohoGC/iOS/1.3.10/ZDOneChatSDK.zip", checksum: "0caeaefa452100eb95ffb2690f4283e62ca0c48c638c0b86ef937165d2a1472f"),
                
        .target(
            name: "ZohoDeskPortalChatKitPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
