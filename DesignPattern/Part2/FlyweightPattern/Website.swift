//
//  Website.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import Foundation
import UIKit

protocol WebsiteProtocol {
    func use(user: WebUser)
}

class ConcreteWebsite: WebsiteProtocol {

    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func use(user: WebUser) {
        print("網站分類: \(name), 用戶: \(user.name)")
    }
}


class UnsharedConcreteWebsite: WebsiteProtocol {

    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func use(user: WebUser) {
        print("網站分類: \(name), 用戶: \(user.name)")
    }
}


