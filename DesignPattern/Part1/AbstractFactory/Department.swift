//
//  Document.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/20.
//

import Foundation

class Department {
    
    private var _id: Int
    private var _name: String
    
    var id: Int {
        get {
            return _id
        }
        
        set {
            _id = newValue
        }
    }
    
    var name: String {
        get {
            return _name
        }
        
        set {
            _name = newValue
        }
    }
    
    init(id: Int, name: String) {
        self._id = id
        self._name = name
    }
    
}

protocol DepartmentProtocol: AnyObject {
    
    func insertDepartment(department: Department)
    func getDepartment(id: Int)
    init()
}

class SQLServerDepartment: DepartmentProtocol {
    
    required init() {}
    
    func insertDepartment(department: Department) {
        print("在 SQL Server 中新增 Department \(department.name) 紀錄")
    }
    
    func getDepartment(id: Int) {
        print("從 SQL Server 中取得 Department id 為 \(id) 紀錄")
    }
}


class AccessDepartment: DepartmentProtocol {
    
    required init() {}
    
    func insertDepartment(department: Department) {
        print("在 Access 中新增 Department \(department.name) 紀錄")
    }
    
    func getDepartment(id: Int) {
        print("從 Access 中取得 Department id 為 \(id) 紀錄")
    }
}
