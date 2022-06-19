//
//  CarDirector.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

class CarDirector {
    
    func constructCar(builder: CarBuilder) {
        
        builder.buildPartA()
        builder.buildPartB()
    }
    
    
}
