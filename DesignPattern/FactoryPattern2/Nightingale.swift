//
//  Nightingale.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import Foundation

class Nightingale {
    
    func sweep() {
        print("Sweep")
        fatalError()
    }
    
    func wash() {
        print("Wash")
        fatalError()
    }
    
    func buyRice() {
        print("Buy Rice")
        fatalError()
    }
}

final class GoodStudent: Nightingale {
    
    override func sweep() {
        print("student sweep")
    }
    
    override func wash() {
        print("student wash")
    }
    
    override func buyRice() {
        print("student buy rice")
    }
}

final class Volunteer: Nightingale {
    
    override func sweep() {
        print("volunteer sweep")
    }
    
    override func wash() {
        print("volunteer wash")
    }
    
    override func buyRice() {
        print("volunteer rice")
    }
    
}

