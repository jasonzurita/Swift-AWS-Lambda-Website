// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift-AWS-Lambda-Website",
    products: [
        .executable(name: "Swift-AWS-Lambda-Website", targets: ["Swift-AWS-Lambda-Website"]),
        .executable(name: "Local-Website", targets: ["Local-Website"]),
    ],
    dependencies: [
        // This is used to interface with AWS Lambda
        .package(url: "https://github.com/tonisuter/aws-lambda-swift.git", .branch("master")),
        // The next two dependencies are HTML and CSS Swift DSLs (respectively)
        // This will facilitate creating styled HTML, which will be returned from the AWS Lambda function
        .package(url: "https://github.com/pointfreeco/swift-html.git", from: "0.2.0"),
        .package(url: "https://github.com/pointfreeco/swift-web.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "GenerateWebsite",
            // Note:
            // Html comes from swift-html above & Css and HtmlCssSupport come from swift-web above
            dependencies: ["Html", "Css", "HtmlCssSupport"]),
        .target(
            name: "Local-Website",
            dependencies: ["GenerateWebsite"]),
        .target(
            // Note:
            // Html comes from swift-html above
            // Css and HtmlCssSupport comes from swift-web above
            name: "Swift-AWS-Lambda-Website",
            dependencies: ["AWSLambdaSwift", "GenerateWebsite"]),
    ]
)
