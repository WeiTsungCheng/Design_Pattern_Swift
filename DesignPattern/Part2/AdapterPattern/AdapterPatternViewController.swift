//
//  AdapterPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import UIKit

class AdapterPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let fp = Forwar(name: "小飛")
        fp.attack()
        let cp = Center(name: "小顆")
        cp.defense()
        let gp = Guards(name: "小牙")
        gp.defense()
        
        let t = Translator(name: "Kevin")
        t.defense()
        t.attack()
        
    }
    

}
