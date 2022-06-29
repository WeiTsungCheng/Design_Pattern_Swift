//
//  HandSetBrand.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/29.
//

import Foundation

protocol HandSetBrandProtocol {
    var soft: HandsetSoftProtocol? { get set }
    func setSoft(soft: HandsetSoftProtocol)
}

class HandSetBrandApple: HandSetBrandProtocol {
    var soft: HandsetSoftProtocol?

    func setSoft(soft: HandsetSoftProtocol) {
        self.soft = soft
    }
    
    func runSoft() {
        soft?.run()
    }
}

class HandSetBrandHTC: HandSetBrandProtocol {
    var soft: HandsetSoftProtocol?
    
    func setSoft(soft: HandsetSoftProtocol) {
        self.soft = soft
    }
    
    func runSoft() {
        soft?.run()
    }
}
