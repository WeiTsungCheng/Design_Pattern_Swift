//
//  AbstractFactory_plus_SimpleFactoryViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import UIKit

class AbstractFactory_plus_SimpleFactoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let user = User(id: 3, name: "Yoyo")
        let department = Department(id: 1, name: "IT")
        
        let u: UserProtocol = DataAccess.createUser()
        u.insertUser(user: user)
        u.getUser(id: 4)
        
        let d: DepartmentProtocol = DataAccess.createDepartment()
        d.insertDepartment(department: department)
        d.getDepartment(id: 3)
    }
    

   
   

}
