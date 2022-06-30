//
//  ChainResponsibilityPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/29.
//

import UIKit

class ChainResponsibilityPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let william = CommonManager(name: "william")
        let john = MajorDemo(name: "john")
        let peter = GeneralManager(name: "peter")
        
        william.setSuperior(superior: john)
        john.setSuperior(superior: peter)
        
        let r = Request(requestType: "DayOff", requestContent: "特休", number: 1)
        william.requestApplication(request: r)
        
        let r2 = Request(requestType: "DayOff", requestContent: "特休", number: 4)
        william.requestApplication(request: r2)
        
        let r3 = Request(requestType: "Promote", requestContent: "加薪", number: 400)
        william.requestApplication(request: r3)
        
        let r4 = Request(requestType: "Promote", requestContent: "加薪", number: 1200)
        william.requestApplication(request: r4)
    }

}
