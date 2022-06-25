//
//  Company.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/25.
//

import Foundation

protocol CompanyProtocol {
    func add(c: Company)
    func remove(c: Company)
    func display(depth: Int)
    func lineOfDuty()
}

class Company: CompanyProtocol {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
   
    func add(c: Company) {
    }
    
    func remove(c: Company) {
        
    }
    
    func display(depth: Int) {
    }
    
    func lineOfDuty() {
    }
    
}

