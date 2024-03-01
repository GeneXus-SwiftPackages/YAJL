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
			url: "https://pkgs.genexus.dev/iOS/beta/YAJL-1.5.0-beta.11.xcframework.zip",
			checksum: "21d754d619a17d1a6fcaee9f7321d0f0960e9d8629d4182261160291bbaadb10"
		)
	]
)