//
//  ProtoViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import UIKit

class ProtoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let resume = Resume(name: "Ben", age: 14)
        resume.setWorkExperience(company: "Apple", time: "2022")
        
      
        let re1 = resume.copy() as! Resume
        
        re1.name = "Jay"
        re1.age = 15
        re1.experience?.company = "Google"
        re1.experience?.time = "2050"
        
        
        resume.result()
        re1.result()
        
    }
    


}
