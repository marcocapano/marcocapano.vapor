//
//  Article.swift
//  App
//
//  Created by Marco Capano on 15/01/2019.
//

import Foundation
import Vapor
import Html

extension HtmlProvider {
    
    private static func error(_ message: String) -> String {
        return "<h1 style=\"text-align:center\">\(message)</h1>"
    }
    
    static func articlePage(on req: Request, fileName: String, title: String, description: String, keywords: [String]) -> Future<Response> {
        
        let promise = req.eventLoop.newPromise(Response.self)
        
        DispatchQueue.global().async {
            let dir = try! req.make(DirectoryConfig.self)
            
            var articleContent: String
            
            if let data = FileManager().contents(atPath: dir.workDir + "Resources/\(fileName).html") {
                articleContent = String(data: data, encoding: .utf8) ?? error("Ops, unable to load the article, You might want to go back :(")
            } else {
                articleContent = error("Ops, page not found! You might want to go back :(")
            }
            
            let response = Response(http: HTTPResponse(status: .ok), using: req)
            
            let pageNode = basePage(pageTitle: title, description: description, keywords: keywords, isArticle: true, [
                pageContent(["#PLACEHOLDER#"])
            ])
            
            let pageBody = render(pageNode).replacingOccurrences(of: "#PLACEHOLDER#", with: articleContent)
            
            response.http.body = HTTPBody(string: pageBody)
            response.http.headers.add(name: .contentType, value: "text/html")
            
            promise.succeed(result: response)
            
            
        }
        
        return promise.futureResult
    }
}
