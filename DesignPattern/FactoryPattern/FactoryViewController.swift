//
//  FactoryViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import UIKit

class FactoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fac: FacoryProtocol = AddFatory()
        let opr: Operation = fac.createOperation()
        
        opr.numberA = 2
        opr.numberB = 10
        print(opr.getResult())
        
        let fac2: FacoryProtocol = PowerFactory()
        let opr2: Operation = fac2.createOperation()
        
        opr2.numberA = 2
        opr2.numberB = 10
        print(opr2.getResult())
    }
    
}
