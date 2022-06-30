//
//  Waiter.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/29.
//

import Foundation

class Waiter {
    
    private var orders: [CommandProtocol] = []
    
    func
    setOrder(command: CommandProtocol) {
        
        if String(describing: type(of: command)) == "BakeChickenWingCommand" {
            print("雞翅沒惹")
        } else {
            orders.append(command)
            print("新增訂單", String(describing: type(of: command)))
        }
    }
    
    func cancelOrder(command: CommandProtocol) {
        orders.removeAll { c in
            if (c.customer == command.customer) {
                print("取消訂單", String(describing: type(of: command)))
            }
            return c.customer == command.customer
        }
      
    }
    
    func notify() {
        orders.forEach { c in
            c.excuteCommand()
        }
    }
    
}
