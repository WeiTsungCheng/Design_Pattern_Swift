//
//  RoleStateMemento.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/25.
//

import Foundation

class RoleStateMemento {
    
    private var _atk: Int
    private var _def: Int
    private var _vit: Int
    
    init(atk: Int, def: Int, vit: Int) {
        self._atk = atk
        self._def = def
        self._vit = vit
    }
    
    var atk: Int {
        get {
            return _atk
        }
        set {
            _atk = newValue
        }
    }
    
    var def: Int {
        get {
            return _def
        }
        set {
            _def = newValue
        }
    }
    
    var vit: Int {
        get {
            return _vit
        }
        set {
            _vit = newValue
        }
    }
    
}
