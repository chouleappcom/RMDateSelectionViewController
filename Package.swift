// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RMDateSelectionViewController",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "RMDateSelectionViewController", targets: ["RMDateSelectionViewController"])
    ],
    dependencies: [
    	.package(url: "https://github.com/chouleappcom/RMActionController.git", .exact("2.0.0"))
    ],
    targets: [
        .target(
            name: "RMDateSelectionViewController",
            dependencies: [
            	"RMActionController"
            ],
            path: ".",
            sources: [
                "RMDateSelectionViewController"
            ],
            publicHeadersPath: "RMDateSelectionViewController",
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
