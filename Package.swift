// swift-tools-version:4.0
import PackageDescription
let package = Package(
    name: "PerfectCMongo",
	pkgConfig: "libmongoc-1.0",
	providers: [
		.brewItem(["mongo-c-driver"]),
		.aptItem(["libmongoc-dev"]),
	],
    products: [
		.library(
			name: "PerfectCMongo",
			targets: ["PerfectCMongo"]
		),
    ],
    dependencies: [
        .package(url: "https://github.com/PerfectSideRepos/Perfect-CBSON.git", .branch("master")),
    ],
    targets: [
		.target(
			name: "PerfectCMongo",
			dependencies: ["PerfectCBSON"]
		)
    ]
)
