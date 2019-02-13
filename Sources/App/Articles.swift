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
            Item(title: "Calling a function n times with the result of each call", url: "articles/Calling-a-function-n-times-with-the-result-of-each-call", tag: "SWIFT", description: "Today I faced this question from a tweet by Sash Zats: how does one call a function n times, using as a parameter for each call the result of the previous call? The answer, as usually happens, is in the Swift Standard Library."),
            Item(title: "Customizing ViewController Presentations", url: "articles/Customizing-ViewControllers-Presentation", tag: "UIKit", description: "Most of the screen transitions that happen in our apps are either modal presentations or push/pop on a navigation stack, and while this is enough for most of the work we need to do, there are some edge cases where we might want to adopt a less “native” and more custom solution. Let's see how we can present a banner from the bottom in our apps.")
        ]
        
        
        return basePage(pageTitle: "Articles", description: "Articles by Marco Capano", keywords: ["GitGub", "git", "open source", "community", "blog", "swift", "standard library", "sequence", "functional programming"], [pageContent(list(articles))])
    }
}
