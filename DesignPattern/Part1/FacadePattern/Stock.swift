//
//  Stock.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/18.
//

import Foundation

class Stock {
    
    func buy() {
        print("buy")
        fatalError()
    }
    
    func sell() {
        print("sell")
        fatalError()
    }
}


final class StockA: Stock {
    
    override func buy() {
        print("buy A stock")
        
    }
    
    override func sell() {
        print("sell A stock")
        
    }
}

final class StockB: Stock {
    
    override func buy() {
        print("buy B stock")
        
    }
    
    override func sell() {
        print("sell B stock")
        
    }
}


final class StockC: Stock {
    
    override func buy() {
        print("buy C stock")
        
    }
    
    override func sell() {
        print("sell C stock")
        
    }
}
