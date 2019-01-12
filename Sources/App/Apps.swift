//
//  Apps.swift
//  App
//
//  Created by Marco Capano on 11/01/2019.
//

import Foundation
import Html

extension HtmlProvider {
    static func apps() -> Node {
        let apps: [Item] = [
            Item(title: "Avvisi Scuola", url: "https://itunes.apple.com/it/app/avvisi-scuola/id1317765834", tag: "SWIFT", description: "Avvisi Scuola is an app that makes the communication between students/families and schools faster and more efficient. Once inserted the school specific PIN code, the user will be able to read the school’s latest news and receive push notification. Moreover, the app contains all the school’s contact like email, telephone number, website etc. Schools can reach out on www.avvisiscuola.com to join the platform. Avvisi Scuola is available on the App Store since Dec 19 2017"),
            Item(title: "Splosh", url: "https://itunes.apple.com/it/app/splosh-lavanderia-domicilio/id1156883167", tag: "OBJECTIVE-C", description: "Splosh is a Laundry & Dry Cleaning Service mostly operating in Milan. Just place your order on the app and Splosh will collect, clean and deliver your clothes wherever you want in 24h. Splosh is available on the App Store since November 2016.")
        ]
        
        return basePage(pageTitle: "Apps", description: "Apps published by Marco Capano", keywords: ["app", "app store", "portfolio", "experience"], [pageContent(list(apps))])
    }
}

