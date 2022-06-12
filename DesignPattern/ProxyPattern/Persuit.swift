//
//  GiveGift.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import Foundation

protocol LoveProtocol {
    
    func giveFlower()
    func giveChocolate()
}

class Persuit: LoveProtocol {
    
    var lover: Girl
    
    init(lover: Girl) {
        self.lover = lover
    }
    
    deinit {
        print("persuit is end")
    }
        
    func giveFlower() {
        print("give flower to \(lover.name)")
        fatalError("Use proxy only")
    }
    
    func giveChocolate() {
        print("give chocolate to \(lover.name)")
        fatalError("Use proxy only")
    }
    
}

