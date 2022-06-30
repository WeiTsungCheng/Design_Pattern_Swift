//
//  Country.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/1.
//

import Foundation

class Country: Equatable {

    
    var mediator: UnitedNations
    var name: String
    
    init(mediator: UnitedNations, name: String) {
        self.mediator = mediator
        self.name = name
    }
    
    static func == (lhs: Country, rhs: Country) -> Bool {
        return lhs.name == rhs.name
    }
    
}


class USA: Country {

    func declare(message: String) {
        mediator.declare(message: message, colleague: self)
    }
    
    func getMessage(message: String) {
        print("USA get message: \(message)")
    }
}



class Irag: Country {

    func declare(message: String) {
        mediator.declare(message: message, colleague: self)
    }
    
    func getMessage(message: String) {
        print("Irag get message: \(message)")
    }
}

