// swift-tools-version:5.0

import PackageDescription

let package = Package(name: "BluetoothLinux",
        products: [
            .library(
                    name: "BluetoothLinux",
                    targets: ["BluetoothLinux"]
            )
        ],
        dependencies: [
            .package(url: "https://github.com/raatiniemi/Bluetooth", .branch("swift-5-default"))
        ],
        targets: [
            .target(name: "BluetoothLinux", dependencies: ["Bluetooth", "CSwiftBluetoothLinux"]),
            .target(name: "CSwiftBluetoothLinux"),
            .target(name: "CSwiftBluetoothLinuxTest"),
            .testTarget(name: "BluetoothLinuxTests", dependencies: ["BluetoothLinux", "CSwiftBluetoothLinuxTest"])
        ],
        swiftLanguageVersions: [.v5]
)
