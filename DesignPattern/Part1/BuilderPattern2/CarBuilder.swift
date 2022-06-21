//
//  CarBuilder.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

// 假設 Car 是由 PartA, PartB 依序組成

protocol CarBuilderProtocol {
    
    func buildPartA()
    func buildPartB()
    func getCar() -> Car
}

class CarBuilder: CarBuilderProtocol {
    
    func buildPartA() {
        
    }
    
    func buildPartB() {

    }
    
    func getCar() -> Car {
        
        fatalError()
    }
   
}


class BMWCarBuilder: CarBuilder {
    
    private let car: Car = Car()
    
    override func buildPartA() {
       
        car.addPart(part: "add part A (BMW)")
    }
    
    override func buildPartB() {
       
        car.addPart(part: "add part B (BMW)")
    }
    
    override func getCar() -> Car {
        return car
    }
    
}

class TOYOTACarBuilder: CarBuilder {
    
    private let car: Car = Car()
    
    override func buildPartA() {
       
        car.addPart(part: "add part A (TOYOTA)")
    }
    
    override func buildPartB() {
       
        car.addPart(part: "add part B (TOYOTA)")
    }
    
    override func getCar() -> Car {
        
        return car
    }
    
    
}


