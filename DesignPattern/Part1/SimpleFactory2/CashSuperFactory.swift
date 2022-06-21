//
//  CashSuperFactory.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//

import Foundation

class CashSuperFactory {
    
    static func createCashAccept(type: String) -> CashSuper? {
        let cashSuper: CashSuper?
        
        switch type {
        case "normal":
            cashSuper = CashSuper()
            
        case "0.8":
            
            let cashRebate = CashRebate(rebateRate: "0.8")
            cashSuper = cashRebate
            
        case "1000-300":
            
            let cashReturn = CashReturn(moneyCondition: "1000", moneyReturn: "300")
            cashSuper = cashReturn
            
        default:
            cashSuper = nil
        }
        
        return cashSuper
    }
}
 
