//
//  PersonProtocol.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import Foundation

protocol PersonProtocol: AnyObject {
    var name: String { get set }
    func accpet(vistor: ActionProtocol)
}

class Man: PersonProtocol {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func accpet(vistor: ActionProtocol) {
        vistor.getManClusion(man: self)
    }
    
    
}

class Woman: PersonProtocol {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func accpet(vistor: ActionProtocol) {
        vistor.getWomanClusion(woman: self)
    }
    
    
}
