// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "maxFramework",
    platforms: [// Only add support for iOS 12 and up.
        .iOS(.v12)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        //.library(name: "MaxLib",targets: ["MaxLib"]),
        .library(name: "maxFramework", targets: ["maxFramework"]),
//        .library(name: "maxFrameworkLocal", targets: ["maxFrameworkLocal"])
        
    ],
    dependencies: [
            /// Define the Mocker dependency:
        ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        //.target(name: "MaxLib"),
        .binaryTarget(
                   name: "maxFramework",
                   url:"https://github.com/yograthod/package-xcframework/releases/download/1.0.0/maxFramework.xcframework.zip",
                   checksum: "202ad3b5ed63eff773127789b72dd29820157ae4145674de95c4e528d4c60ebc"
               ),
//        .binaryTarget(
//                    name: "maxFramework",
//                    path: "./Sources/maxFramework.xcframework"
//                )
    ]
)
