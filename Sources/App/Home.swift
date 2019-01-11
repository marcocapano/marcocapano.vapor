//
//  Home.swift
//  App
//
//  Created by Marco Capano on 09/01/2019.
//

import Foundation
import Html

extension HtmlProvider {
    static func home() -> Node {
        let apps = Attribute<Tag.A>("href", "/apps")
        let openSource = Attribute<Tag.A>("href", "/opensource")
        let writing = Attribute<Tag.A>("href", "/writing")
        let linkedin = Attribute<Tag.A>("href", "https://www.linkedin.com/in/marcocapano/")
        let github = Attribute<Tag.A>("href", "https://github.com/marcocapano")
        let mail = Attribute<Tag.A>("href", "mailto:marco24capano@icloud.com")
        let twitter = Attribute<Tag.A>("href", "https://twitter.com/marcocapano1")
        
        let content = HtmlProvider.pageContent([
            p([
                "Hi, it's Marco! I build iOS apps, contribute to open source and study Computer Engineering. I became an iOS Developer in 2016 studying at the Apple Developer Academy in Italy, then started working while starting my Computer Engineering program."]),
            p(["I love basketball, books, TV series and tech. I like contributing to open source ", a([`class`("link"), openSource], ["(see here)"]), " and recently started contributing ", a([`class`("link"), writing],["to the italian version of NSHipster.com"]), ". You can find some of the apps I published on the App Store ",
               a([`class`("link"), apps], ["here"]), "."
            ]),
            
            h2([style("color: rgb(51,51,51)")], ["Get in touch!"]),
            
            ul([
                li(["Email: ", a([`class`("link"), mail], ["marco24capano@icloud.com"])]),
                li(["GitHub: ", a([`class`("link"), github], ["@marcocapano"])]),
                li(["Twitter: ", a([`class`("link"), twitter], ["@marcocapano1"])]),
                li(["Linkedin: ", a([`class`("link"), linkedin], ["@marcocapano"])])
            ])
        ])
        
        return html([
            head([
                title("Marco Capano"),
                style(unsafe: stylesheet),
                meta(viewport: .width(.deviceWidth), .initialScale(1))
            ]),
            body([
                headerComponent(),
                content
            ])
        ])
    }
}

