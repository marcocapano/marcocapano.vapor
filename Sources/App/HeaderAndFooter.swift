//
//  Header.swift
//  App
//
//  Created by Marco Capano on 09/01/2019.
//

import Foundation
import Html

extension HtmlProvider {
    static func headerComponent() -> Node {
        let homeLink = Attribute<Tag.A>("href", "/")
        let appsLink = Attribute<Tag.A>("href", "/apps")
        let openSourceLink = Attribute<Tag.A>("href", "/opensource")
        let writingLink = Attribute<Tag.A>("href", "/articles")
        
        return header([
            div([`class`("nav-container")], [
                a([`class`("logo"), homeLink], ["Marco Capano"]),
                div([`class`("links-container")], [
                    a([`class`("link"), homeLink], ["Home"]),
                    a([`class`("link"), appsLink], ["Apps"]),
                    a([`class`("link"), openSourceLink], ["Open Source"]),
                    a([`class`("link"), writingLink], ["Articles"])
                ])
            ])
        ])
    }
    
    static func footerComponent() -> Node {
        return footer([
            pre([
                code([`class`("code-highlighted code-swift")], [
                    span([`class`("syntax-all syntax-comment")],
                         ["//Created by Marco Capano with Vapor💧"])
                ])
            ])
        ])
    }
}
