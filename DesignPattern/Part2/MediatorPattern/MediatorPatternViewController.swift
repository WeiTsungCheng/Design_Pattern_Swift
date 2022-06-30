//
//  MediatorPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/29.
//

import UIKit

class MediatorPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let UNSC = UnitedNationSecurityCouncil()
        
        let c1 = USA(mediator: UNSC, name: "USA")
        let c2 = Irag(mediator: UNSC, name: "Irag")
        
        UNSC.country1 = c1
        UNSC.country2 = c2
        
        c1.declare(message: "不準擁有核武")
        c2.declare(message: "我們安分守己")
       
    }
    

}
