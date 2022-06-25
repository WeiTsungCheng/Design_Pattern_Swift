//
//  Translator.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import Foundation

class Translator: Player {
    
    private lazy var foreignCenter = ForeignCenter(name: "")
    
    override init(name: String) {
        super.init(name: name)
        foreignCenter.name = name
    }
    
    override func attack() {
        foreignCenter.attackF()
    }
    
    override func defense() {
        foreignCenter.defenseF()
    }
    
}
