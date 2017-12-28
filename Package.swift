// swift-tools-version:4.0
import PackageDescription
let package = Package(
	name: "PerfectCMongo",
	pkgConfig: "libmongoc-1.0",
	providers: [
		.brew(["mongo-c-driver"]),
		.apt(["libmongoc-dev"]),
	],
	dependencies: [
		.package(url: "https://github.com/PerfectSideRepos/Perfect-CBSON.git", from: "0.0.0"),
	]
)
