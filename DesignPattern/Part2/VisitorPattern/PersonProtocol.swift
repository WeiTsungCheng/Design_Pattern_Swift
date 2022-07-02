//
//  PersonProtocol.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import Foundation

protocol PersonProtocol: AnyObject {

    func accpet(vistor: ActionProtocol)
}

class Man: PersonProtocol {
    
    func accpet(vistor: ActionProtocol) {
        vistor.getManClusion(man: self)
    }
    
    
}

class Woman: PersonProtocol {
    
    func accpet(vistor: ActionProtocol) {
        vistor.getWomanClusion(woman: self)
    }
    
    
}
