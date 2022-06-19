//
//  InformerTwo.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

protocol InformerProtocolTwo {
    
    func notify()
    var action: String { get set }
}

class SecretaryTwo: InformerProtocolTwo {
    
    private var _action: String
    
    var action: String {
        get {
            return _action
        }
        
        set {
            _action = newValue
        }
    }
    
    let upadate = Event<Void>()

    init(action: String) {
        self._action = action
    }
    
    func notify() {
        upadate.raise(data: ())
    }
    
}
