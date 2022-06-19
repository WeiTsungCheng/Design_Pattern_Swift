//
//  FacadeViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/18.
//

import UIKit

class FacadeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let inc = FundInc()
        
        inc.portfolioOne()
        inc.portfolioTwo()
        
        
    }
    

    

}
