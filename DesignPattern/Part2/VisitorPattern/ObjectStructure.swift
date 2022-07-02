//
//  ObjectStructure.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import Foundation

class ObjectStructure {
    
    var list: [PersonProtocol] = []
    
    func attach(element: PersonProtocol) {
        list.append(element)
    }
    
    func detach(element: PersonProtocol) {
        list = list.filter { p in
            return p === element
        }
    }
    
    func display(action: ActionProtocol) {
        
        list.forEach { p in
            p.accpet(vistor: action)
        }
    }
}
