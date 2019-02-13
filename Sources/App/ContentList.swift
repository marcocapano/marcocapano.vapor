//
//  ContentList.swift
//  App
//
//  Created by Marco Capano on 11/01/2019.
//

import Foundation
import Html

struct Item {
    let title: String
    let url: String
    let tag: String
    let description: String
}

extension HtmlProvider {
    static func list(_ items: [Item]) -> [Node] {
        return items.map { item in
            let url = Attribute<Tag.A>("href", item.url)
            let link = a([`class`("contentLink"),url], [.text(item.title)])
            let opacity = Attribute<Tag.H4>("style", "opacity:0.6")
            
            return p([
                div([
                    h4([opacity], [.text("#️⃣ "), .text(item.tag)]),
                    h2([link])
                ]),
                .text(item.description)
            ])
        }
    }
}
