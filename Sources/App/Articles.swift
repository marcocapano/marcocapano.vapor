//
//  Articles.swift
//  App
//
//  Created by Marco Capano on 21/01/2019.
//

import Foundation
import Html

extension HtmlProvider {
    static func articles() -> Node {
        let articles: [Item] = [
            Item(title: "Calling a function n times with the result of each call", url: "https://marcocapano.vapor.cloud/articles/Calling-a-function-n-times-with-the-result-of-each-call", tag: "SWIFT", description: "Today I faced this question from a tweet by Sash Zats: how does one call a function n times, using as a parameter for each call the result of the previous call? The answer, as usually happens, is in the Swift Standard Library.")
        ]
        
        
        return basePage(pageTitle: "Articles", description: "Articles by Marco Capano", keywords: ["GitGub", "git", "open source", "community", "blog", "swift", "standard library", "sequence", "functional programming"], [pageContent(list(articles))])
    }
}
