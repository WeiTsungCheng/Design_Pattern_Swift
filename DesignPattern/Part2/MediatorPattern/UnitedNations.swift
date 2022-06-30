//
//  UnitedNations.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/1.
//

import Foundation

protocol UnitedNations {
    
    func declare(message: String, colleague: Country)
    
}


class UnitedNationSecurityCouncil: UnitedNations {
    
    private var _country1: USA?
    private var _country2: Irag?
    
    var country1: USA? {
        get {
            return _country1
        }
        set {
            _country1 = newValue
        }
    }
    
    var country2: Irag? {
        get {
            return _country2
        }
        set {
            _country2 = newValue
        }
    }
   
    func declare(message: String, colleague: Country) {
        
        if (colleague == country1) {
            country2?.getMessage(message: message)
        } else {
            country1?.getMessage(message: message)
        }
    }
    
    
}
