//
//  AbstractFactoryViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/20.
//

import UIKit

class AbstractFactoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let user = User(id: 3, name: "Yoyo")
        let department = Department(id: 1, name: "IT")
        
        let f: AbstractFactoryProtocol = AccessFactory()
        
        let u: UserProtocol = f.createUser()
        u.insertUser(user: user)
        u.getUser(id: 4)
        
        let d: DepartmentProtocol = f.createDepartment()
        d.insertDepartment(department: department)
        d.getDepartment(id: 3)
    }
    
    
    

}
