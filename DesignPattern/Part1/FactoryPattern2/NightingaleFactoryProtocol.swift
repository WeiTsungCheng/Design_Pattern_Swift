//
//  NightingaleProtocol.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import Foundation

protocol NightingaleFactoryProtocol {
    
    func createNightingale() -> Nightingale
}

class GoodStudentFactory: NightingaleFactoryProtocol {
    
    func createNightingale() -> Nightingale {
        
        return GoodStudent()
    }
}

class VolunteerFactorty: NightingaleFactoryProtocol {
   
    func createNightingale() -> Nightingale {
        return Volunteer()
    }
}
