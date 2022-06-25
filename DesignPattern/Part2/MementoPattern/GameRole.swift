//
//  GameRole.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/25.
//

import Foundation

class GameRole {
    
    private var _atk: Int
    private var _def: Int
    private var _vit: Int
    
    init(atk: Int = 0, def: Int = 0, vit: Int = 0) {
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
    
    func setInitailState() {
        self.atk = 100
        self.def = 100
        self.vit = 100
    }
    
    func saveState() -> RoleStateMemento{
        
        return RoleStateMemento(atk: _atk, def: _def, vit: _vit)
    }
    
    func recoveryState(memento: RoleStateMemento) {
        self.atk = memento.atk
        self.def = memento.def
        self.vit = memento.vit
    
    }
    
    func fight() {
        self.atk -= 10
        self.def -= 10
        self.vit -= 10
    }
    
    func displayState() {
        print("ATK: \(atk)")
        print("DEF: \(def)")
        print("VIT: \(vit)")
        print("____________________")
    }
    
}



