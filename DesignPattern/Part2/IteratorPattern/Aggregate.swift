//
//  Aggregate.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/27.
//

import Foundation



protocol Aggregate {
    
    func createIterator() -> Iterator
}

class ConcregateAggregate: Aggregate {
    
    var items: [Any] = []
    
    func createIterator() -> Iterator {
        
        return ConcreteIterator(aggregate: self)
    }
    
    var count: Int {
        get {
            return items.count
        }
    }
    
    func getObject(at index: Int) -> Any {
        
        return items[index]
    }
    
}

