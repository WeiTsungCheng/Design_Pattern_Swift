//
//  Person.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/11.
//

import Foundation

class Person {
    private var name: String
    
    init(name: String = "") {
        self.name = name
    }
    
    func show() {
        print("-> Dress up \(name)")
    }
}

