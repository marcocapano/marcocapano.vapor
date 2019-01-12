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
        let projects: [Item] = [
            Item(title: "📐 Layout: A lightweight wrapper around AutoLayout.", url: "https://github.com/marcocapano/Layout", tag: "CREATOR", description: "A lot of different layout extensions exist out there, proposing different solutions to the problem of NSLayoutAnchor’s APIs. Some use functions to compose layouts, some use a more functional approach, some use a proxy approach, some simply add syntactic sugar to the existing API’s. Sometimes though you might want to use different approaches to layout within the same app. Layout doesn’t want to pick one solution and make you choose. Instead, it gives you the choice and flexibility to use whatever approach you want without adding layers of abstractions, allowing you to even pick and mix the standard APIs for some cases."),
            Item(title: "🔐 TypeSafePassword: A type-safe way to write password rules in Swift.", url: "https://github.com/marcocapano/TypeSafePassword", tag: "CREATOR", description: "Writing password rules in iOS 12 can really go wrong due to its string-based API. This lightweight library takes full advantage of Swift's powerful type system with an Enum-styled API, making them easy and type-safe to create."),
            Item(title: "📄 StaticTableView: A simple and declarative way of creating a static TableViewController.", url: "https://github.com/marcocapano/StaticTableView", tag: "CREATOR", description: "Designing simple, native screens is now simpler. You define the content you want to be rendered, StaticTableView takes care about all that setup stuff."),
            Item(title: "🚀 Swifter Swift", url: "https://github.com/SwifterSwift/SwifterSwift", tag: "CONTRIBUTOR", description: "SwifterSwift is a collection of over 500 native Swift extensions, with handy methods, syntactic sugar, and performance improvements for wide range of primitive data types, UIKit and Cocoa classes –over 500 in 1– for iOS, macOS, tvOS, watchOS and Linux.")
        ]
        
        return basePage(pageTitle: "Open source", description: "Open source projects by Marco Capano", keywords: ["GitGub", "git", "open source", "community"], [pageContent(list(projects))])
    }
}
