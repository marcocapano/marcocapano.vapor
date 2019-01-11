//
//  OpenSource.swift
//  App
//
//  Created by Marco Capano on 11/01/2019.
//

import Foundation
import Html

extension HtmlProvider {
    static func openSource() -> Node {
        let items: [Item] = [
            Item(title: "📐 Layout: A lightweight wrapper around AutoLayout.", url: "https://github.com/marcocapano/Layout", description: "A lot of different layout extensions exist out there, proposing different solutions to the problem of NSLayoutAnchor’s APIs. Some use functions to compose layouts, some use a more functional approach, some use a proxy approach, some simply add syntactic sugar to the existing API’s. Sometimes though you might want to use different approaches to layout within the same app. Layout doesn’t want to pick one solution and make you choose. Instead, it gives you the choice and flexibility to use whatever approach you want without adding layers of abstractions, allowing you to even pick and mix the standard APIs for some cases.")
        ]
        
        return basePage([pageContent(list(items))])
    }
}
