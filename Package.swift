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
			url: "https://pkgs.genexus.dev/iOS/preview/YAJL-3.0.0-rc.8.xcframework.zip",
			checksum: "8e41be50ade6fd81c8f90d4fed258e49efd1f5cde318ad9890a3656a407eb1b7"
		)
	]
)