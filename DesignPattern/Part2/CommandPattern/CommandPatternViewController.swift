//
//  CommandPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/27.
//

import UIKit

class CommandPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let b = Babecuer()
        let c = BakeMuttonCommand(receiver: b, customer: "小美")
        let c2 = BakeMuttonCommand(receiver: b, customer: "小王")
        let c3  = BakeChickenWingCommand(receiver: b, customer: "小美")
        
        let w = Waiter()
        
        w.setOrder(command: c)
        w.setOrder(command: c2)
        w.setOrder(command: c3)
        w.cancelOrder(command: c2)
        w.notify()
        
    }

}
