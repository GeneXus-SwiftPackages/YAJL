// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "YAJL",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
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
			url: "https://pkgs.genexus.dev/iOS/beta/YAJL-1.0.0-beta+20230309154144.xcframework.zip",
			checksum: "eb57c74810ca1db24defa4cae138853ffbf06914456b74c8c4ef1728b5ec3187"
		)
	]
)