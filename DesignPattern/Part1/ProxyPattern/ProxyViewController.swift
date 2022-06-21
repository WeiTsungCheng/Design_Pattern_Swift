//
//  ProxyViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import UIKit

class ProxyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let g = Girl(name: "Pinki")
        let pp = PersuitProxy(lover: g)
        
        pp.giveChocolate()
        pp.giveFlower()
        
    }
    

}
