//
//  CompositePatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/22.
//

import UIKit

class CompositePatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let c = ConcreteCompany(name: "北京總公司")
        let cdh = HRDepartment(name: "北京總公司人資部門")
        let cdf = FNDepartment(name: "北京總公司財務部門")
        c.add(c: cdh)
        c.add(c: cdf)
        
        let branch = ConcreteCompany(name: "上海分公司")
        let bdh = HRDepartment(name: "上海分公司人資部門")
        let bdf = FNDepartment(name: "上海分公司財務部門")
        branch.add(c: bdh)
        branch.add(c: bdf)
        
        let agency1 = ConcreteCompany(name: "杭州辦事處")
        let adh = HRDepartment(name: "杭州辦事處人資部門")
        let adf = FNDepartment(name: "杭州辦事處財務部門")
        agency1.add(c: adh)
        agency1.add(c: adf)
        
        let agency2 = ConcreteCompany(name: "南京辦事處")
        
        branch.add(c: agency1)
        branch.add(c: agency2)
        
        c.add(c: branch)
        
        
        
        let bdh2 = HRDepartment(name: "南京辦事處人資部門")
        agency2.add(c: bdh2)
        branch.remove(c: bdh)
        agency1.remove(c: adh)
        
        
        c.display(depth: 1)
        c.lineOfDuty()
        
    }
    


}
