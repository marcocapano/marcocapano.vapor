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
            Item(title: "Splosh", url: "https://itunes.apple.com/it/app/splosh-lavanderia-domicilio/id1156883167", tag: "OBJECTIVE-C", description: "Splosh is a Laundry & Dry Cleaning Service mostly operating in Milan. Just place your order on the app and Splosh will collect, clean and deliver your clothes wherever you want in 24h. Splosh is available on the App Store since November 2016."),
            Item(title: "Rappresentame", url: "https://itunes.apple.com/it/app/rappresentame/id1330914443", tag: "SWIFT", description: "Rappresentame is an app that allows parents to use one platform for all class-related stuff like organizing and tracking events, receive news about the school, talk to other parents through group chats, collecting moneys for projects. Rappresentame is available on the italian App Store since Semptember 2018."),
            Item(title: "Delega Facile", url: "https://uploads-ssl.webflow.com/5a78583668edf6000100ce6d/5b30fda66d1ed7558a3895b4_delega%20facile%20from%20photoshop.jpg", tag: "SWIFT", description: "Delega Facile is a match-making app that helps lawyers find substitutions and substitute other lawyers using a Feed of requests, a real-time chat and a payment system integrated with PayPal. Delega Facile will be available soon on the App Store.")
        ]
        
        return basePage(pageTitle: "Apps", description: "Apps published by Marco Capano", keywords: ["app", "app store", "portfolio", "experience"], [pageContent(list(apps))])
    }
}

