//
//  RoleStateCaretaker.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/25.
//

import Foundation

class RoleStateCaretaker {
    
    private var _memento: RoleStateMemento?
    
    var memento: RoleStateMemento? {
        get {
            return _memento
        }
        
        set {
            _memento = newValue
        }
    }
    
    init(memento: RoleStateMemento? = nil) {
        self._memento = memento
    }
}
