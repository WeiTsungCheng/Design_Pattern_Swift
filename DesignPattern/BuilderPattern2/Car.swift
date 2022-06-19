//
//  Car.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

class Car {
    
    var parts: [String] = []
    
    func addPart(part: String) {
        parts.append(part)
    }
    
    func showParts() {
        parts.forEach { s in
            print("\(s) \n")
        }
    }
    
}
