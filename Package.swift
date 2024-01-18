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
        .library(name: "MaxLib",targets: ["maxFramework"]),
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
                   url:"https://drive.google.com/file/d/1SXhRlhamver9uX-BaqumXGZz5TzHcCXl/view?usp=drive_link/maxFramework.xcframework.zip",
                   checksum: "1ce79dc9509768e55be9301639631b446c769e322d7abe4670297ac53ab66b1d"
               ),
//        .binaryTarget(
//                    name: "maxFramework",
//                    path: "./Sources/maxFramework.xcframework"
//                )
    ]
)
