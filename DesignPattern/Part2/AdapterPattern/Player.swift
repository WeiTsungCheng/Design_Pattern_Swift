//
//  Player.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import Foundation

protocol TacticsProtocol {
    
    func attack()
    func defense()
}

class Player: TacticsProtocol {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func attack() {
        
    }
    
    func defense() {
        
    }
    
}


class Forwar: Player {

    override func attack() {
        print("Forwar \(name) attack")
    }
    
    override func defense() {
        print("Forwar \(name) defense")
    }
    
}


class Center: Player {

    override func attack() {
        print("Center \(name) attack")
    }
    
    override func defense() {
        print("Center \(name) defense")
    }
    
}

class Guards: Player {
    
    override func attack() {
        print("Guards \(name) attack")
    }
    
    override func defense() {
        print("Guards \(name) defense")
    }
    
}


// Foreigner

class ForeignCenter {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func attackF() {
        print("ForeignCenter \(name) attackF")
    }
    
    
    func defenseF() {
        print("ForeignCenter \(name) defenseF")
    }
    
}

