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
			url: "https://pkgs.genexus.dev/iOS/beta/YAJL-2.2.0-beta.13.xcframework.zip",
			checksum: "ad8082541cc66acbc85f6f0c8288249d7e55d37ac5f5e2d0b8f2ae1a8d142ddd"
		)
	]
)