// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "YAJL",
	platforms: [.iOS("12.0"), .watchOS("9.0"), .tvOS("12.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "YAJL",
			targets: ["YAJLWrapper"])
	],
	dependencies: [
		
	],
	targets: [
		.target(name: "YAJLWrapper",
				dependencies: [
					"YAJL",
					
				],
				path: "Sources"),
		.binaryTarget(
			name: "YAJL",
			url: "https://pkgs.genexus.dev/iOS/beta/YAJL-2.0.0-beta.16.xcframework.zip",
			checksum: "1b88b4bbfe3b72b6ae8157e74ae9151bc7d9f515d2aa40da01ccf449fc4d5bff"
		)
	]
)