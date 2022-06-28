//
//  Iterator .swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/27.
//

import Foundation

class ConcreteIterator: Iterator {
    
    private var aggregate: ConcregateAggregate
    private var current: Int = 0
    
    init(aggregate: ConcregateAggregate) {
        self.aggregate = aggregate
    }
    
    func first() -> Any? {
        return aggregate.items[0]
    }
    
    func next() -> Any? {
        var ret: Any? = nil
        current += 1
        if current < aggregate.items.count {
            ret = aggregate.items[current]
        }
        
        return ret
    }
    
    func isDone() -> Bool {
        
        return current >= aggregate.items.count
    }
    
    func currentItem() -> Any? {
        
        return aggregate.items[current]
    }
    
}
