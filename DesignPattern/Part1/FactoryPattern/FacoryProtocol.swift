//
//  FacoryProtocol.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import Foundation

protocol FacoryProtocol {
    
    func createOperation() -> Operation
}

class AddFatory: FacoryProtocol {
    
    func createOperation() -> Operation {
        return OperatorAdd()
    }
    
}

class SubFactory: FacoryProtocol {
    
    func createOperation() -> Operation {
        return OperatorSub()
    }
    
}

class PowerFactory: FacoryProtocol {
    
    func createOperation() -> Operation {
        return OperatorPower()
    }
    
}
