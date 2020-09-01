//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func afficherHtml(urlSite:URL) {
    do {
        let html:String
        html = try String(contentsOf: urlSite)
        print(html)
    } catch {
        print(error.localizedDescription)
    }
}

func afficherHtmlOptionnel(urlSite:URL) {
    if let html = try? String(contentsOf: urlSite) {
        print(html)
    }
}

struct EmptyPageError : Error {
}

func afficherHtmlException(urlSite:URL) throws {
    let html:String
    html = try String(contentsOf: urlSite)
    if html.count == 0 {
        throw EmptyPageError()
    }
    print(html)
}

if let url = URL(string:"https://www.purplegiraffe.fr") {
    try? afficherHtmlException(urlSite: url)
}

