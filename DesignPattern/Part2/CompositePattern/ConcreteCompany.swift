//
//  ConcreteCompany.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/25.
//

import Foundation

class ConcreteCompany: Company {
    
    private var children: [Company] = []
    
    override init(name: String) {
        super.init(name: name)
    }
    
    override func add(c: Company) {
        children.append(c)
    }
    
    override func remove(c: Company) {
        children = children.filter({ child in
           return child !== c
        })
    }
    
    override func display(depth: Int) {
       
        print(String(repeating: "-", count: depth), "\(name)")
        
        children.forEach { c in
            c.display(depth: depth + 2)
        }
    }
    
    override func lineOfDuty() {
        print("\(name)")
        
        children.forEach { c in
            c.lineOfDuty()
        }
    }
}
