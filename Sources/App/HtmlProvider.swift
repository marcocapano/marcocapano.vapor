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

    @media screen and (max-width: 30rem) {
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

    header {
        position: sticky;
        position: -webkit-sticky;
        position: -moz-sticky;
        position: -ms-sticky;
        position: -o-sticky;
        top: 0;
        -webkit-box-shadow:0px 4px 4px -2px #c8c8c8;
        -moz-box-shadow:0px 4px 4px -2px #c8c8c8;
        box-shadow:0px 4px 4px -2px #c8c8c8;
    }

    @media screen and (max-width: 30rem) {
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
        display: inline-flex;
        align-items: center;
        flex-wrap: wrap;
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
        flex-flow: column wrap;
        align-content: center;
        margin: 0 auto;
        width: 53%;
    }

    @media screen and (max-width: 30rem) {
        .page-content {
            margin: 1.5rem 1rem 3rem 1rem;
            width: 75%;
        }
    }

    """
    
    static let articlesStylesheet = """

    img {
        max-width: 100%;
        margin: 0;
    }

    blockquote {
        margin: 1.5em;
        color:  #666;
    }

    strong, dfn {
        font-weight: bold;
    }

    em, dfn {
        font-style: italic;
    }

    del {
        color: #666;
    }

    pre {
        margin: 1.5em 0;
        white-space: pre;
    }

    pre, code, tt {
        font: 1em 'andale mono', 'lucida console', monospace;
        line-height: 1.5;
    }

    li ul, li ol {
        margin: 0;
    }

    ul, ol {
        margin: 0 3em 1.5em 1.5em;
        padding-left: 1.5em;
    }

    ul {
        list-style-type: disc;
    }

    ol {
        list-style-type: decimal;
    }

    figure {
        margin:     1.5em 0;
        width:      100%;
        text-align: center;
    }

    figcaption {
        font-size:     0.75em;
        padding:       0.5em 2em;
        margin-bottom: 2em;
    }

    figure img {
        margin-bottom: 0px;
    }

    hr {
        border:        0px;
        border-top:    1px solid #ddd;
        border-bottom: 1px solid #fff;
        margin-top:    4em;
        margin-bottom: 2em;
    }

    h1 + hr {
        margin-top: 2em;
    }

    ol#footnotes {
        font-size:   0.75em;
        padding-top: 1.5em;
        margin-top:  3em;
        margin-left: 0;
    }

    ol#footnotes:before {
        content:        "â€”â€”â€”";
        letter-spacing: -4px;
        margin-left:    -1.5em;
    }

    ol p, ul p {
        margin-bottom: 0px;
    }

    li {
        margin-bottom: 0.75em;
        margin-top:    0.75em;
    }

    /* Code Highlighting */

    code {
        font-family: 'Menlo', monospace;
        font-size:   10.5pt;
    }

    p > code {
        padding:    0.2em 0.4em;
        background: #eee;
    }

    pre {
        color:         #000;
        text-align:    left;
        line-height:   1.2em;
        overflow-x:    scroll;
        background:    #f8f8f8;
        padding:       20pt;
        margin:        20pt 0;
        border-radius: 3pt;
        white-space:   pre-wrap;
        tab-size:      4;
    }

    .syntax-all {
    }

    .syntax-entity {
        color: #6f42c1;
    }

    .syntax-tag {
        color: #22863a;
    }

    .syntax-keyword {
        color: #d73a49;
    }

    .syntax-parameter {
        color: #24292e;
    }

    .syntax-string {
        color: #003878;
    }

    .syntax-constant {
        color: #005cc5;
    }

    .syntax-variable {
        color: #e36209;
    }

    .syntax-escape {
        font-weight: bold;
        color:       #22863a;
    }

    .syntax-comment {
        color: #6a737d;
    }

    .syntax-error {
        color: #b31d28;
    }

    /* Markup Highlighting */

    .syntax-heading {
        font-weight: bold;
        color:       #005cc5;
    }

    .syntax-italic {
        font-style: italic;
        color:      #24292e;
    }

    .syntax-bold {
        font-weight: bold;
        color:       #24292e;
    }

    .syntax-deleted {
        color:            #b31d28;
        background-color: #ffeef0;
    }

    .syntax-inserted {
        color:            #22863a;
        background-color: #f0fff4;
    }

    .syntax-changed {
        color:            #e36209;
        background-color: #ffebda;
    }

    .syntax-link {
        text-decoration: underline;
        color:           #032f62;
    }

    .syntax-list {
        color: #e36209;
    }

    @keyframes highfade {
    0% {
        background-color: none;
    }
    20% {
        background-color: yellow;
    }
    100% {
        background-color: none;
    }
    }

    @-webkit-keyframes highfade {
    0% {
        background-color: none;
    }
    20% {
        background-color: yellow;
    }
    100% {
        background-color: none;
    }
    }

    a:target, ol#footnotes li:target, sup a:target {
    animation-name:                    highfade;
    animation-duration:                2s;
    animation-iteration-count:         1;
    animation-timing-function:         ease-in-out;
    -webkit-animation-name:            highfade;
    -webkit-animation-duration:        2s;
    -webkit-animation-iteration-count: 1;
    -webkit-animation-timing-function: ease-in-out;
    }

    a:target {
    border:0;outline: 0;
    }
    
    ul,ol {
        margin: 0;
    }
    
    }
    """
    
}
