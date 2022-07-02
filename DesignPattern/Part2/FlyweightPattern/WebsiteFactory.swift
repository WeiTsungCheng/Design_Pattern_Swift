//
//  WebsiteFactory.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import Foundation

class WebsiteFactory {
     
    var flyweight: [String: WebsiteProtocol] = [:]
    
    func getWebSiteCategory(key: String) -> WebsiteProtocol {
        
        if (!flyweight.keys.contains(key)) {
            flyweight[key] = ConcreteWebsite(name: key)
        }
        
        return flyweight[key]!
    }
    
    
    func getWebsiteCount() -> Int {
        return flyweight.count
    }
}


