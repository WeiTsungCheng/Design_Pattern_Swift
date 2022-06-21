//
//  CashContext.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//

import Foundation

final class CashContext {
    
    private let cashSuper: CashSuper
    
    init(cs: CashSuper) {
        self.cashSuper = cs
    }
    
    func getResult(money: Double) -> Double {
        return cashSuper.acceptCash(money: money)
    }
}
