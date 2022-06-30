//
//  Command.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/29.
//

import Foundation

protocol CommandProtocol {
    var receiver: Babecuer { get }
    var customer: String { get }
    
    init(receiver: Babecuer, customer: String)
    
    func excuteCommand()
}


class BakeMuttonCommand: CommandProtocol {

    var receiver: Babecuer
    var customer: String
    
    required init(receiver: Babecuer, customer: String) {
        self.receiver = receiver
        self.customer = customer
    }
    
    func excuteCommand() {
        receiver.bakeMutton()
    }
}


class BakeChickenWingCommand: CommandProtocol {
    
    var receiver: Babecuer
    var customer: String
    
    required init(receiver: Babecuer, customer: String) {
        self.receiver = receiver
        self.customer = customer
    }
    
    func excuteCommand() {
        receiver.bakeChickenWing()
    }
    
}

