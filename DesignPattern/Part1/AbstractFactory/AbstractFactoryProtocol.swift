//
//  UserFactoryProtocol.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/20.
//

import Foundation

protocol AbstractFactoryProtocol {
    
    func createUser() -> UserProtocol
    func createDepartment() -> DepartmentProtocol
}


class SQLServerFactory: AbstractFactoryProtocol {
  
    func createUser() -> UserProtocol {
        return SQLServerUser()
    }
    
    func createDepartment() -> DepartmentProtocol {
        return SQLServerDepartment()
    }
    
}

class AccessFactory: AbstractFactoryProtocol {

    func createUser() -> UserProtocol {
        return AccessUser()
    }
    
    func createDepartment() -> DepartmentProtocol {
        return AccessDepartment()
    }
    
}
