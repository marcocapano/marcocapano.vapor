//
//  BasePage.swift
//  App
//
//  Created by Marco Capano on 11/01/2019.
//

import Foundation
import Html

extension HtmlProvider {
    static func basePage(pageTitle: String, description: String, keywords: [String], _ content: [Node]) -> Node {
        var baseContent = content
        baseContent.insert(headerComponent(), at: 0)
        
        let defaultKeywords = [
            "Swift", "Apple", "Marco Capano", "Developer"
            , "iOS", "mobile", "Objective-C"
        ]
        
        let imageRef = "https://github.com/marcocapano/marcocapano.vapor/raw/master/Public/images/marco.jpeg"
        
        return html([
            head([
                title(pageTitle),
                style(unsafe: stylesheet),
                meta(viewport: .width(.deviceWidth), .initialScale(1)),
                meta(keywords: defaultKeywords + keywords),
                
                meta(name: "author", content: "Marco Capano"),
                meta(name: "name", content: pageTitle),
                meta(name: "description", content: description),
                meta(name: "image", content: imageRef),
                
                meta(name: "twitter:site", content: "@marcocapano1"),
                meta(name: "twitter:title", content: pageTitle),
                meta(name: "twitter:description", content: description),
                meta(name: "twitter:creator", content: "@marcocapano1"),
                meta(name: "twitter:image:src", content: imageRef),
                meta(name: "twitter:image", content: imageRef),
                
                meta(property: "og:title", content: pageTitle),
                meta(property: "og:type", content: "article"),
                meta(property: "og:image", content: imageRef),
                meta(property: "og:description", content: description),
                meta(property: "og:image", content: imageRef),
                meta(property: "og:site_name", content: "Marco Capano"),
                meta(property: "article:section", content: pageTitle),
                meta(property: "article:tag", content: keywords.joined(separator: " "))
            ]),
            body(baseContent)
        ])
    }
}
