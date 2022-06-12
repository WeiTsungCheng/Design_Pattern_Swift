//
//  DecoratorViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import UIKit

class DecoratorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let xc = Person(name: "Will")

        let tshirt = Tshirt()
        
        let bigTrouser = BigTrouser()
        
        let sneaker = Sneaker()
        
        tshirt.decorate(component: xc)

        bigTrouser.decorate(component: tshirt)
        
        sneaker.decorate(component: bigTrouser)
        
        sneaker.show()
    }
    


}
