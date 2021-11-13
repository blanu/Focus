// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "Focus",
        platforms: [.macOS(.v10_15)],
	products: [
		.library(
			name: "Focus",
			targets: ["Focus"]),
	],
	dependencies: [
		.package(url: "https://github.com/typelift/SwiftCheck.git", .branch("master")),
		.package(url: "https://github.com/blanu/Operadics.git", .branch("master")),
	],
	targets: [
		.target(
			name: "Focus",
			dependencies: ["Operadics"]),
		.testTarget(
			name: "FocusTests",
			dependencies: ["Focus", "Operadics", "SwiftCheck"]),
	],
        swiftLanguageVersions: [.v5]
)

