//
//  Operation.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//

import Foundation

protocol OperationResultDelegate {
    func getResult() -> Double
}

class Operation: OperationResultDelegate {
    
    private var _numberA: Double
    private var _numberB: Double
    
    var numberA: Double {
        get {
            return _numberA
        }
        set {
            _numberA = newValue
        }
    }
    
    var numberB: Double {
        get {
            return _numberB
        }
        set {
            _numberB = newValue
        }
    }
    
    init(numA: Double = 0, numB: Double = 0) {
        self._numberA = numA
        self._numberB = numB
    }
    
    func getResult() -> Double {
        
        return 0
    }
    
}


final class OperatorAdd: Operation {
    
    override func getResult() -> Double {
        
        let result = numberA + numberB
        
        return result
    }
    
}

final class OperatorSub: Operation {
    
    override func getResult() -> Double {
        
        let result = numberA - numberB
        
        return result
    }
    
}

final class OperatorPower: Operation {
    
    override func getResult() -> Double {
        
        let result = pow(numberA, numberB)
        
        return result
    }
}


