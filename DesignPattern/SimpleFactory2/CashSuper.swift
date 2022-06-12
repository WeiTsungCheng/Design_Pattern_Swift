//
//  CashSuper.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//

import Foundation

protocol CashSuperAccpetCashDelegate {
    
    func acceptCash(money: Double) -> Double
}

class CashSuper: CashSuperAccpetCashDelegate {
    
    func acceptCash(money: Double) -> Double {
        
        return money
    }
    
}

final class CashRebate: CashSuper {
    
    var rebateRate: Double
    
    init(rebateRate: String) {
        self.rebateRate = Double(rebateRate) ?? 1
        super.init()
    }
    
    
    override func acceptCash(money: Double) -> Double {
        return money * rebateRate
    }
    
}

final class CashReturn: CashSuper {
    
    var moneyCondition: Double
    var moneyReturn: Double
    
    init(moneyCondition: String, moneyReturn: String) {
      
        self.moneyCondition = Double(moneyCondition) ?? 0
        self.moneyReturn = Double(moneyReturn) ?? 0
        super.init()
    }
    
    override func acceptCash(money: Double) -> Double {
        
        var result = money
        
        if money > moneyCondition {
            result -= moneyReturn
        }
        
        return result
    }
    
}
