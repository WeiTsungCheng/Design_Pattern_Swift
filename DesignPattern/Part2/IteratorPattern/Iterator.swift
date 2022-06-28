//
//  Iterator.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/27.
//

import Foundation

protocol Iterator {
    
    func first() -> Any?
    func next()  -> Any?
    func isDone() -> Bool
    func currentItem()  -> Any?
}
