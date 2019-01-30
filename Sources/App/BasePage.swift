//
//  BasePage.swift
//  App
//
//  Created by Marco Capano on 11/01/2019.
//

import Foundation
import Html

public func sizes(_ width: Int, height: Int) -> Attribute<Tag.Link> {
    return .init("sizes", "\(width)x\(height)")
}

extension HtmlProvider {
    static func basePage(pageTitle: String, description: String, keywords: [String], isArticle: Bool = false, _ content: [Node]) -> Node {
        var baseContent = content
        baseContent.insert(headerComponent(), at: 0)
        
        let defaultKeywords = [
            "Swift", "Apple", "Marco Capano", "Developer"
            , "iOS", "mobile", "Objective-C"
        ]
        
        let imageRef = "images/marco.jpeg"
        let stl = isArticle ? stylesheet + articlesStylesheet : stylesheet
        
        return html([
            head([
                script([src("https://www.googletagmanager.com/gtag/js?id=UA-133490817-1")],
                       """
                          window.dataLayer = window.dataLayer || [];
                          function gtag(){dataLayer.push(arguments);}
                          gtag('js', new Date());
                        
                          gtag('config', 'UA-133490817-1');
                       """),
                title(pageTitle),
                style(unsafe: stl),
                meta(viewport: .width(.deviceWidth), .initialScale(1)),
                meta([Attribute<Tag.Meta>("charset", "utf-8")]),
                meta(keywords: defaultKeywords + keywords),
                link([rel(Rel(rawValue: "apple-touch-icon")), sizes(180, height: 180), href("/apple-touch-icon.png")]),
                link([rel(.icon), type(.image(.png)), sizes(32, height: 32), href("/favicon-32x32.png")]),
                link([rel(.icon), type(.image(.png)), sizes(16, height: 16), href("/favicon-16x16.png")]),
                link([rel(Rel(rawValue: "manifest")), href("/site.webmanifest")]),
                link([rel(Rel(rawValue: "mask-icon")), href("safari-pinned-tab.svg"), Attribute<Tag.Link>("color", "#5bbad5")]),
                meta(name: "msapplication-TileColor", content: "#da532c"),
                meta(name: "theme-color", content: "#ffffff"),
                
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
