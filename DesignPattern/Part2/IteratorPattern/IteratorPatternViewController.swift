//
//  IteratorPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/25.
//

import UIKit

class IteratorPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = ConcregateAggregate()
        
        a.items.append("皮皮")
        a.items.append("花花")
        a.items.append("暖暖")
        a.items.append("大狗勾")
        a.items.append("志明")
        a.items.append("煒煒")
        
        let i = ConcreteIterator(aggregate: a)
        
        let item = i.first()
        print(item!)
    
        while !(i.isDone()) {
            print("\(i.currentItem()!) 請買票")
            _ = i.next()
        }
        
        
        
        class Pen {
            var name: String
            
            init(name: String) {
                self.name = name
            }
        }
        
        
        let b = ConcregateAggregate()
        
        b.items.append(Pen(name: "原子筆"))
        b.items.append(Pen(name: "毛筆"))
        b.items.append(Pen(name: "碳筆"))
        b.items.append(Pen(name: "鉛筆"))
        b.items.append(Pen(name: "彩色筆"))
        b.items.append(Pen(name: "鋼筆"))
        
        let i2 = ConcreteIterator2(aggregate: b)
        
        let item2 = i2.first()
        print((item2 as! Pen).name)
    
        while !(i2.isDone()) {
            let pen = i2.currentItem()  as! Pen
            print("用 \(pen.name) 畫畫")
            _ = i2.next()
        }
     
    }
    

}
