//
//  HTMLProvider.swift
//  App
//
//  Created by Marco Capano on 07/01/2019.
//

import Foundation
import Html

enum HtmlProvider {
    
    static let stylesheet = """
    .nav-container {
        background-color: #FFFFFF;
        display: flex;
        flex: 1;
        flex-flow: row wrap;
        justify-content: space-between;
        margin: 1.5rem 1rem 3rem 1rem;
    }

    @media screen and (max-width: 767px) {
        .nav-container {
            flex-flow: column nowrap;
            justify-content: flex-start;
            margin-bottom: 2rem;
        }
    }

    html {
        background: white;
        font-size: 19px;
        line-height: 1.4;
        font-family: "Source Sans Pro", "Helvetica Neue", Helvetica, Arial, sans-serif;
    }

    @media screen and (max-width: 767px) {
        html {
            font-size: 16px
        }
    }

    a {
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    .link {
        color: rgb(27,112,222);
        font-weight: normal;
    }

    .links-container {
        font-weight: 600;
        font-size: 0.8rem;
        letter-spacing: 1px;
        padding: 0;
        text-transform: uppercase;
        display: inline-block;
    }

    .links-container .link {
        font-size: 16px;
        color: rgb(51,51,51);
        margin-right: 10px;
    }

    .logo {
        color: rgb(51,51,51);
        font-weight: bold;
        font-size: 28px;
    }

    .page-content {
        display: flex;
        align-content: center;
        margin: 0 auto;
        width: 75%;
    }

    @media screen and (max-width: 767px) {
        .page-content {
            margin: 1.5rem 1rem 3rem 1rem;
        }
    }

    """
    
}
