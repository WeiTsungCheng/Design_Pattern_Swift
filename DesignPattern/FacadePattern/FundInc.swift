//
//  FundInc.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/18.
//

import Foundation

class FundInc {
    
    private let stockA = StockA()
    private let stockB = StockB()
    private let stockC = StockC()
    
    func portfolioOne() {
        
        stockA.sell()
        stockB.buy()
        stockC.buy()
        
    }
     
    func portfolioTwo() {
        
        stockA.buy()
        stockB.buy()
        stockC.sell()
        
    }
    
}
