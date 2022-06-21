//
//  Finery.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import Foundation


class Finery: Person {
    
    var component: Person?
    
    func decorate(component: Person) {
        self.component = component
    }
    
    override func show() {
        component?.show()
    }
}


final class Tshirt: Finery {
    
    override func show() {
        print("T-shirt")
        super.show()
    }
    
}

final class BigTrouser: Finery {
    
    override func show() {
        print("Big Trouser")
        super.show()
    }
}

final class Sneaker: Finery {
    
    override func show() {
        print("Sneaker")
        super.show()
    }
}

