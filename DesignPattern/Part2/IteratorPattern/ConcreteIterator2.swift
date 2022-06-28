//
//  Iterator2.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/27.
//

import Foundation

class ConcreteIterator2: Iterator {
    
    private var aggregate: ConcregateAggregate
    private var current: Int
    
    init(aggregate: ConcregateAggregate) {
        self.aggregate = aggregate
        self.current = aggregate.count - 1
    }
    
    func first() -> Any? {
        return aggregate.items[aggregate.count - 1]
    }
    
    func next() -> Any? {
        var ret: Any? = nil
        current -= 1
        if (current >= 0) {
            ret = aggregate.items[current]
        }
        
        return ret
    }
    
    func isDone() -> Bool {
        return current < 0
    }
    
    func currentItem() -> Any? {
        
        return aggregate.items[current]
    }
    
}
