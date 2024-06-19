// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PrettyHTML",
  platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],

  products: [
    .library(
      name: "PrettyHTML",
      targets: ["PrettyHTML"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.6.0"),
  ],
  targets: [
    .target(
      name: "PrettyHTML",
      dependencies: [
        .product(name: "SwiftSoup", package: "SwiftSoup"),
      ],
      swiftSettings: [.interoperabilityMode(.Cxx)]
    ),
    .target(name: "html2md"),
    .testTarget(
      name: "PrettyHTMLTests",
      dependencies: ["PrettyHTML"]
    ),
  ],
  cxxLanguageStandard: .gnucxx11
)
