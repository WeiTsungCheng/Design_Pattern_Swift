//
//  BridgePatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/27.
//

import UIKit

class BridgePatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let b = HandSetBrandHTC()
        b.setSoft(soft: HandsetGame())
        b.runSoft()
        
        b.setSoft(soft: HandsetMP3())
        b.runSoft()
    }
    


}
