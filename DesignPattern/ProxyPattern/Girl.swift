//
//  Girl.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import Foundation

class Girl {
    
    private var _name: String
    var name: String {
        get {
            return _name
        }
        
        set {
            _name = newValue
        }
    }
    
    init(name: String) {
        self._name = name
    }
    
}
