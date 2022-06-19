//
//  TemplateMethodViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import UIKit

class TemplateMethodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sp1 = StudentPaper1()
        
        let sp2 = StudentPaper2()
        
        print("SP1: ")
        sp1.testQ1()
        sp1.testQ2()
        sp1.testQ3()
        
        print("\n")
        
        print("SP2: ")
        sp2.testQ1()
        sp2.testQ2()
        sp2.testQ3()
    }
    

}
