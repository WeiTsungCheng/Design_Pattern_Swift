//
//  DataAccess.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import Foundation

class DataAccess {
    
    static let db: String = "Access"
    
    static func createUser() -> UserProtocol {
        
        // 使用反射前
        //        switch db {
        //        case "SQLServer":
        //            return SQLServerUser()
        //        case "Access":
        //            return AccessUser()
        //        default:
        //            fatalError()
        //        }
        
        // 使用反射後
        let className = db + "User"
        let user = className.swiftClassFromString() as! UserProtocol.Type
        
        return user.init()
    }
    
    static func createDepartment() -> DepartmentProtocol {
       
       
        // 使用反射前
//        switch db {
//        case "SQLServer":
//            return SQLServerDepartment()
//        case "Access":
//            return AccessDepartment()
//        default:
//            fatalError()
//        }
        
        // 使用反射後
        let className = db + "Department"
        let department = className.swiftClassFromString() as! DepartmentProtocol.Type
        
        return department.init()
    }
    
    
}

