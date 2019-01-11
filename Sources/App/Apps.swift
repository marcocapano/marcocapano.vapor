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
            Item(title: "Avvisi Scuola", url: "https://itunes.apple.com/it/app/avvisi-scuola/id1317765834", tag: "SWIFT", description: "Avvisi Scuola is an app that makes the communication between students/families and schools faster and more efficient. Once inserted the school specific PIN code, the user will be able to read the school’s latest news and receive push notification. Moreover, the app contains all the school’s contact like email, telephone number, website etc. Schools can reach out on www.avvisiscuola.com to join the platform. Avvisi Scuola is available on the App Store since Dec 19 2017")            
        ]
        
        return basePage([pageContent(list(apps))])
    }
}

