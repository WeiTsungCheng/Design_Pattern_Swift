//
//  Secretary.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation


protocol InformerProtocol {
    
    func attach(observer: Observer)
    func detach(observer: Observer)
    func notify()
    
    var action: String { get set }
}


class Secretary: InformerProtocol {
    
    private var observers: [Observer] = []
    
    private var _action: String
    
    var action: String {
        get {
            return _action
        }
        
        set {
            _action = newValue
        }
    }
    
    init(action: String) {
        self._action = action
    }
    
    func attach(observer: Observer) {
        self.observers.append(observer)
    }
    
    func detach(observer: Observer) {
        self.observers = self.observers.filter { o in
            o !== observer
        }
    }
    func notify() {
        self.observers.forEach { o in
            o.update()
        }
    }
}



class Boss: InformerProtocol {
    
    private var observers: [Observer] = []
    
    private var _action: String
    
    var action: String {
        get {
            return _action
        }
        
        set {
            _action = newValue
        }
    }
    
    init(action: String) {
        self._action = action
    }
    
    func attach(observer: Observer) {
        self.observers.append(observer)
    }
    
    func detach(observer: Observer) {
        self.observers = self.observers.filter { o in
            o !== observer
        }
    }
    func notify() {
        self.observers.forEach { o in
            o.update()
        }
    }
}
