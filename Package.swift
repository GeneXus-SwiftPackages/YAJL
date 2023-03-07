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
			url: "https://pkgs.genexus.dev/iOS/beta/YAJL-1.0.0-beta+20230307184249.xcframework.zip",
			checksum: "36d2ac491feacff47150e79590e28e54dcbb3b8f0f0abb20b37882bfa11d07e0"
		)
	]
)