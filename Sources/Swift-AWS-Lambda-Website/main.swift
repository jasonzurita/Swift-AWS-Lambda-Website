import AWSLambdaSwift
import GenerateWebsite

// Dummy event because we don't care about what is coming in
// when the Lambda gets called
struct Event: Codable { }

// This is the return from the Lambda that simply includes
// a HTML string
struct Result: Codable {
    let html: String
}

// Swift AWS handler function that calls the website generator
func handler(event: Event, context: Context) -> Result {
    return Result(html: generateWebsite())
}

// Make the runtime and register the handler
// Note: the handler in AWS will need to labeled `Swift-AWS-Lambda-Website.handler`
let runtime = try Runtime()
runtime.registerLambda("handler", handlerFunction: handler)
try runtime.start()
