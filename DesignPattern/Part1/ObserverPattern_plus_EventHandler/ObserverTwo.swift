//
//  ObserverTwo.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

class ObserverTwo {
    var name: String
    var informer: InformerProtocolTwo
    
    init(name: String, informer: InformerProtocolTwo) {
        self.name = name
        self.informer = informer
    }
    
}

class StockObserverTwo: ObserverTwo {
    
    override init(name: String, informer: InformerProtocolTwo) {
        super.init(name: name, informer: informer)
    }
    
    func closeStock(_: Void) {
        print("\(informer.action) \(name) 關掉股票行情 繼續工作")
    }
}

class NBAObserverTwo: ObserverTwo {
    
    override init(name: String, informer: InformerProtocolTwo) {
        super.init(name: name, informer: informer)
    }
    
    func closeNBA(_: Void) {
        print("\(informer.action) \(name) 關掉NBA賽情 繼續工作")
    }
}
