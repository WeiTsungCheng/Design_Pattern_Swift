//
//  Factory2ViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import UIKit

class Factory2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let f: NightingaleFactoryProtocol = GoodStudentFactory()
        let s = f.createNightingale()
    
        s.sweep()
        s.wash()
        s.buyRice()
    }
    


}
