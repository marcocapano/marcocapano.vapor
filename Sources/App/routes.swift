import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // "It works" page
    router.get { req -> Response in
        let response = Response(http: HTTPResponse(status: .ok, body: htmlHome), using: req)
        response.http.headers.add(name: .contentType, value: "text/html")
        
        return response
    }
    
    // Says hello
    router.get("hello", String.parameter) { req -> Future<View> in
        return try req.view().render("hello", [
            "name": req.parameters.next(String.self)
        ])
    }
    
    router.get("marco") { req in
        return "YEESSSSSS"
    }
}

let htmlHome = """
<html>
<head><style>body {
    padding: 0.5rem;
    line-height: 1.35;
    font-family: SanFranciscoDisplay-Regular;
}

blockquote {
    border-left: 2px #777 solid;
    font-style: italic;
    color: #777;
    margin-left: 1rem;
    padding-left: 0.5rem;
}

pre {
    background-color: #f3f3f3;
    padding: 0.5rem;
    overflow-x: scroll;
}

code {
    background-color: #f3f3f3;
    padding: 0.25rem;
}

#header-container {
    overflow: hidden;
    background-color: #f1f1f1;
    padding: 20px 10px;
}

#header-container a {
    float: left;
    color: black;
    text-align: center;
    padding: 12px;
    text-decoration: none;
    font-size: 18px;
    line-height: 25px;
    border-radius: 4px;
}

#logo {
    font-size: 25px;
    font-weight: bold;
}

#header-links {
    float: right;
}

@media screen and (max-width: 500px) {
    #header a {
        float: none;
        display: block;
        text-align: left;
    }
    
    #header-links {
        float: none;
    }
}
</style></head><body><header><div id="header-container"><h1 id="logo" href="/">Marco Capano</h1><div id="header-links"><a href="/">Home</a><a href="/projects">Projects</a></div></div></header></body>
</html>
"""
