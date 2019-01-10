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
        let projectsLink = Attribute<Tag.A>("href", "/projects")
        
        let content = div([`class`("page-content")], [
            p([
                "Hi, it's Marco! I build iOS apps, contribute to open source and study Computer Engineering. You can find some of my works ",
                a([`class`("link"),projectsLink], ["here"]), "."
            ])
        ])
        
        return html([
            head([
                title("Marco Capano"),
                style(unsafe: stylesheet)
            ]),
            body([
                headerComponent(),
                content
            ])
        ])
    }
}

