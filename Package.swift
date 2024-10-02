// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ADDData",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ADDData",
            targets: ["ADDData"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SergioHRV/ADDDomain.git",
                    .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ADDData",
            dependencies: ["ADDDomain"],
            path: "ADDData/Sources/ADDData",
            resources: [
                .process("PersistentStorage/ADDemo.xcdatamodeld")
            ]),
        .testTarget(
            name: "ADDDataTests",
            dependencies: ["ADDData"],
            path: "ADDData/Tests/ADDDataTests"),
    ]
)
