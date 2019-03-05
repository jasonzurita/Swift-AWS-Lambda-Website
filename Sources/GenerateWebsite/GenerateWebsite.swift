import Foundation
import Html
import Css
import HtmlCssSupport
import Prelude

public func zIndex(_ index: Int) -> Stylesheet {
  return key("z-index", "\(index)")
}

public func generateWebsite() -> String {

    let bodyStyle = height("100%")
                        <> margin(all: 0)
                        <> backgroundColor(.rgb(0xCC, 0xCC, 0xCC))

    let flexContainer = height("100%")
                        <> margin(all: 0)
                        <> padding(all: 0)
                        <> display(.flex)
                        <> align(items: .center)
                        <> fontFamily(["Arial", "Helvetica", "sans-serif"])
                        <> justify(content: .center)
                        <> fontSize(.rem(1.5))
                        <> color(.white)

    let imageStyle = position(.absolute)
                        <> top(0)
                        <> left(0)
                        <> right(0)
                        <> bottom(0)
                        <> margin(all: .auto)
                        <> zIndex(-1)

    let centerRow = width(.auto)

    let item = height(.auto)
                   <> width(.auto)
                   <> textAlign(.center)
                   <> color(.rgb(0x33, 0x33, 0x33))

    let hrStyle = position(.relative)
                      <> width("40%")

    let document = html([
        body([style(bodyStyle)], [
            img([src("https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Swift_logo.svg/533px-Swift_logo.svg.png"), alt(""), style(imageStyle)]),
            div([style(flexContainer)], [
                div([style(centerRow)], [
                    div([style(item)], [
                        h1(["Welcome!"]),
                        h3(["A demo website written in Swift & hosted using AWS Lambda"]),
                        hr([style(hrStyle)]),
                    ]),
                    div([style(item)], [
                        p([
                            "Check out the related ",
                            a([href("https://www.jasonzurita.com/websites-using-swift-and-lambda/")], ["blog post."]),
                        ]),
                    ]),
                ]),
            ]),
        ]),
    ])

    return render(document)
}
