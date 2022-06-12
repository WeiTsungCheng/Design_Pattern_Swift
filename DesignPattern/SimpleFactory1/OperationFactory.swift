//
//  OperationFactory.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//

import Foundation

final class OperationFactory {
    
    static func createOperator(operate: String) -> Operation? {
        
        let oper: Operation?
        
        switch operate {
        case "+":
            oper = OperatorAdd()
            
        case "-":
            oper = OperatorSub()
        
        case "^":
            oper = OperatorPower()
            
        default:
            oper = nil
        }
        
        return oper
        
    }
}
