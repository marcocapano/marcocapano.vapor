//
//  PageContent.swift
//  App
//
//  Created by Marco Capano on 11/01/2019.
//

import Foundation
import Html

extension HtmlProvider {
    static func pageContent(_ content: [Node]) -> Node {
        return div([`class`("page-content")], content)
    }
}
