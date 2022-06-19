//
//  PersonDirector.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

final class PersonDirector {
    
    private let builder: PersonBuilder
    
    init(b: PersonBuilder) {
        self.builder = b
    }
    
    func createPerson() {
        
        builder.buildHead()
        builder.buildBody()
        builder.buildHands()
        builder.buildFoots()
    }
}
