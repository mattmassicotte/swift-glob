// swift-tools-version: 5.9

import PackageDescription

let package = Package(
	name: "swift-glob",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v13),
		.tvOS(.v13),
		.watchOS(.v6),
		.macCatalyst(.v13),
		.visionOS(.v1),
	],
	products: [
		.library(
			name: "Glob",
			targets: ["Glob"]
		),
	],
	dependencies: [
	],
	targets: [
		.target(
			name: "Glob",
			dependencies: [
			],
			swiftSettings: [
				.enableUpcomingFeature("StrictConcurrency"),
			]
		),
		.testTarget(
			name: "GlobTests",
			dependencies: [
				"Glob",
			]
		),
	]
)
