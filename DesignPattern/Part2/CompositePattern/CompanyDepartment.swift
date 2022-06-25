//
//  HRDepartment.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/25.
//

import Foundation

class HRDepartment: Company {
    
    override init(name: String) {
        super.init(name: name)
    }
    
    override func add(c: Company) {
        fatalError()
    }
    
    override func remove(c: Company) {
        fatalError()
    }
    
    override func display(depth: Int) {
        print(String(repeating: "-", count: depth), "\(name)")
    }
    
    override func lineOfDuty() {
        print("\(name): 人資管理")
    }
}

class FNDepartment: Company {
    
    override init(name: String) {
        super.init(name: name)
    }
    
    override func add(c: Company) {
        fatalError()
    }
    
    override func remove(c: Company) {
        fatalError()
    }
    
    override func display(depth: Int) {
        print(String(repeating: "-", count: depth), "\(name)")
    }
    
    override func lineOfDuty() {
        print("\(name): 財務管理")
    }
}
