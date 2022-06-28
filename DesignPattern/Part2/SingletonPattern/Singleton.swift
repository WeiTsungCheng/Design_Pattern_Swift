//
//  Singleton.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/28.
//

import Foundation

final class Singleton {
    
    static let shared = Singleton()
    
    private init() { print("init Singleton") }
    
    
}
