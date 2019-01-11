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
    
}
