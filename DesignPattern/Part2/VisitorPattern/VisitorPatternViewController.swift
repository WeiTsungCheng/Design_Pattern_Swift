//
//  VisitorPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import UIKit

class VisitorPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let os = ObjectStructure()
        os.attach(element: Man(name: "小禮"))
        os.attach(element: Woman(name: "愛芬"))
        
        let v1 = Success()
        os.display(action: v1)
        
        let v2 = Failure()
        os.display(action: v2)
        
        let v3 = Marriage()
        os.display(action: v3)
    
    }
    

}
