// swift-tools-version: 6.0
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "NeurAmigo",
    platforms: [
        .iOS("26.0")
    ],
    products: [
        .iOSApplication(
            name: "NeurAmigo",
            targets: ["AppModule"],
            bundleIdentifier: "com.arshen19.neuramigo",
            teamIdentifier: "",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [.pad, .phone],
            supportedInterfaceOrientations: [.portrait],
            appCategory: .education
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: ".",
            exclude: ["Package.swift"]
        )
    ]
)
