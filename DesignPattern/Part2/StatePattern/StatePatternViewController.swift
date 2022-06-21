//
//  StatePatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import UIKit

class StatePatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let w = Work()
        w.hour = 10
        w.programing()
        w.hour = 11
        w.programing()
        
        w.hour = 12
        w.programing()
        
        w.hour = 13
        w.programing()
        w.hour = 14
        w.programing()
        
      

        w.hour = 17
        w.programing()
        w.hour = 18
        w.programing()
        
        w.isTaskFinished = true
        
        w.hour = 21
        w.programing()
        w.hour = 22
        w.programing()
     
    }
    


}
