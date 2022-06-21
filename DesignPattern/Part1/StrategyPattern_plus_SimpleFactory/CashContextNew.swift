//
//  CashContextNew.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//

import Foundation

final class CashContextNew {
    
    private let cashSuper: CashSuper?
    
    init(type: String) {
        
        switch type {
        case "normal":
            cashSuper = CashSuper()
            
        case "0.8":
            cashSuper = CashRebate(rebateRate: "0.8")
            
        case "1000-300":
            cashSuper = CashReturn(moneyCondition: "1000", moneyReturn: "300")
            
        default:
            cashSuper = nil
        }
        
    }
    
    func getResult(money: Double) -> Double? {
        return cashSuper?.acceptCash(money: money)
    }
}
