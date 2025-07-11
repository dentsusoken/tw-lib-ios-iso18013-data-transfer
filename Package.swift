// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MdocDataTransfer18013",
	platforms: [.macOS(.v12), .iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MdocDataTransfer18013",
            targets: ["MdocDataTransfer18013"]),
    ],
    dependencies: [
        .package(url: "https://github.com/dentsusoken/tw-lib-ios-iso18013-data-model.git", branch: "main"),
        .package(url: "https://github.com/dentsusoken/tw-lib-ios-iso18013-security.git", branch: "main"),
	],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MdocDataTransfer18013", dependencies: [
                .product(name: "MdocDataModel18013", package: "tw-lib-ios-iso18013-data-model"),
				.product(name: "MdocSecurity18013", package: "tw-lib-ios-iso18013-security")]),

        .testTarget(
            name: "MdocDataTransfer18013Tests",
            dependencies: ["MdocDataTransfer18013"]),
    ]
)
