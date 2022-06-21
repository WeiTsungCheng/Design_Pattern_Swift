//
//  BuilderPattern2ViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import UIKit

class BuilderPattern2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let d1 = CarDirector()
        let b1 = BMWCarBuilder()
        
        d1.constructCar(builder: b1)
        let car1 = b1.getCar()
        car1.showParts()
        
        let d2 = CarDirector()
        let b2 = TOYOTACarBuilder()
        
        d2.constructCar(builder: b2)
        let car2 = b2.getCar()
        car2.showParts()
        
        
    }
    

}
