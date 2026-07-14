// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "YAJL",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
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
			url: "https://pkgs.genexus.dev/iOS/beta/YAJL-4.2.0-beta.32.xcframework.zip",
			checksum: "7b7590b4a3b0d71d35ca26fa78089156d7362f168f36ea9d603bf39da3d8e227"
		)
	]
)