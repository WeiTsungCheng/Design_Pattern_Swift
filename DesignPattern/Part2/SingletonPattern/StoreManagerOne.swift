//
//  StoreManagerOne.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/29.
//

import Foundation

final class StoreManagerOne {
    
    static let shared = StoreManagerOne()
    private var availableComputers: [Computer] = []
    
    private let queue = DispatchQueue(label: "computerstore.serial")
    
    private init() {}
    
    func getComputers() -> [Computer] {
        var computers: [Computer] = []
        queue.sync {
            computers = availableComputers.sorted { $0.name < $1.name }
        }
        return computers
    }
    
    func add(_ computer: Computer) {
        queue.sync {
            self.availableComputers.append(computer)
        }
    }
    
    func remove(_ computer: Computer) {
        queue.sync {
            self.availableComputers.removeAll { $0.name == computer.name }
        }
    }
    
}

class Computer {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
