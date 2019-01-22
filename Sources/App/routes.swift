import Vapor
import Html
import HtmlVaporSupport

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // "It works" page
    router.get { _ in
        return HtmlProvider.home()
    }
    
    router.get("opensource") { _ in
        return HtmlProvider.openSource()
    }
    
    router.get("apps") { _ in
        return HtmlProvider.apps()
    }
    
    router.get("articles") { _ in
        return HtmlProvider.articles()
    }
    
    router.get("articles", String.parameter) { req -> Future<Response> in
        let fileName = try req.parameters.next(String.self)
        return HtmlProvider.articlePage(on: req, fileName: fileName, title: name(from: fileName), description: "", keywords: [fileName])
    }
    
}

func name(from string: String) -> String {
    return string.replacingOccurrences(of: "-", with: " ")
}
