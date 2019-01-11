//
//  BasePage.swift
//  App
//
//  Created by Marco Capano on 11/01/2019.
//

import Foundation
import Html

extension HtmlProvider {
    static func basePage(_ content: [Node]) -> Node {
        var baseContent = content
        baseContent.insert(headerComponent(), at: 0)
        
        return html([
            head([
                title("Open Source"),
                style(unsafe: stylesheet),
                meta(viewport: .width(.deviceWidth), .initialScale(1))
            ]),
            body(baseContent)
        ])
    }
}
