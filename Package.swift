// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaxLib",
    platforms: [// Only add support for iOS 12 and up.
        .iOS(.v12)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "MaxLib",targets: ["MaxLib"]),
        .library(name: "maxFramework", targets: ["maxFramework"]),
//        .library(name: "maxFrameworkLocal", targets: ["maxFrameworkLocal"])
        
    ],
    dependencies: [
            /// Define the Mocker dependency:
        ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "MaxLib"),
        .binaryTarget(
                   name: "maxFramework",
                   url:"https://drive.google.com/file/d/1DE7kHG9NMlRD4mUJ-T7bdU8EFUCAi8bL/view?usp=drive_link/maxFramework.xcframework.zip",
                   checksum: "f36d56ef45e29caae910a458494e30b0843e9d1460bd26e8d0f994f875eceef6"
               ),
//        .binaryTarget(
//                    name: "maxFramework",
//                    path: "./Sources/maxFramework.xcframework"
//                )
    ]
)
