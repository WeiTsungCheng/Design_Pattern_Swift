//
//  StoreManager.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/28.
//

import Foundation

final class StoreManagerTwo {
    
    static let shared = StoreManagerTwo()
    private var availableComputers: [Computer] = []
    
    private let queue = DispatchQueue(label: "computerstore.concurrent", qos: .default, attributes: .concurrent)
    
    private init() {}
    
    func getComputers() -> [Computer] {
        var computers: [Computer] = []
        queue.sync {
            computers = availableComputers.sorted { $0.name < $1.name }
        }
        return computers
    }
    
    func add(_ computer: Computer) {
        queue.async(flags: .barrier) {
            self.availableComputers.append(computer)
            
        }
    }
    
    func remove(_ computer: Computer) {
        queue.async(flags: .barrier) {
            self.availableComputers.removeAll { $0.name == computer.name }
        }
    }
    
}



