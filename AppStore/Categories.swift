//
//  Categories.swift
//  AppStore
//
//  Created by ThangLQ on 4/11/17.
//  Copyright © 2017 ThangLQ. All rights reserved.
//

import UIKit

class Categories: NSObject {
    var categoryName: String?
    var apps: [App]?
    
    static func sampleData() -> [Categories] {
        let categoryApp = Categories()
        categoryApp.categoryName = "Best Apps"
        var apps = [App]()
        let appFacebook = App()
        appFacebook.name = "Facebook"
        appFacebook.price = "3.99"
        appFacebook.category = "Social"
        appFacebook.image = "ic_logo"
        apps.append(appFacebook)
        categoryApp.apps = apps
        
        let categoryGame = Categories()
        categoryGame.categoryName = "Best Games"
        var games = [App]()
        let gameClash = App()
        gameClash.name = "Clash of clan"
        gameClash.price = "2.99"
        gameClash.category = "Entertaiment"
        gameClash.image = "ic_clash"
        games.append(gameClash)
        categoryGame.apps = games
        
        return [categoryApp, categoryGame]
    }
}

class App: NSObject {
    var id: String?
    var name: String?
    var price: String?
    var image: String?
    var category: String?
}
