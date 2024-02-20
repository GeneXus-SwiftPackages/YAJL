// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "YAJL",
	platforms: [.iOS("12.0"), .watchOS("9.0"), .tvOS("12.0")],
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
			url: "https://pkgs.genexus.dev/iOS/beta/YAJL-1.5.0-beta.6.xcframework.zip",
			checksum: "abbefa5afccbd6c6b8cb4c419805c078382b428f2b181e70e305575399877f36"
		)
	]
)