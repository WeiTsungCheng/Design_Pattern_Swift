//
//  StockObserver.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

protocol ObserverProtocol {
    func update()
}

class Observer: ObserverProtocol {
    var name: String
    var informer: InformerProtocol
    
    init(name: String, informer: InformerProtocol) {
        self.name = name
        self.informer = informer
    }
    
    func update() {
    }
    
}

class StockObserver: Observer {
    
    override init(name: String, informer: InformerProtocol) {
        super.init(name: name, informer: informer)
    }
    
   override func update() {
        print("\(informer.action) \(name) 關掉股票行情 繼續工作")
    }
}

class NBAObserver: Observer {
    
    override init(name: String, informer: InformerProtocol) {
        super.init(name: name, informer: informer)
    }
    
   override func update() {
        print("\(informer.action) \(name) 關掉NBA 賽情繼續工作")
    }
}
