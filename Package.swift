// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "YAJL",
	platforms: [.iOS("13.0"), .watchOS("9.0"), .tvOS("13.0"), .visionOS("1.0")],
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
			url: "https://pkgs.genexus.dev/iOS/beta/YAJL-2.2.0-beta.30.xcframework.zip",
			checksum: "4b52b808605dd3b982c2da814dc4f6a6966eff114297a535d7d7422d3f3dcf9f"
		)
	]
)