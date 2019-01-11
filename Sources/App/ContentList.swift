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
    let description: String
}

extension HtmlProvider {
    static func list(_ items: [Item]) -> [Node] {
        return items.map { item in
            let url = Attribute<Tag.A>("href", item.url)
            let link = a([`class`("logo"),url], [.text(item.title)])
            
            return p([
                h2([link]),
                .text(item.description)
            ])
        }
    }
}
