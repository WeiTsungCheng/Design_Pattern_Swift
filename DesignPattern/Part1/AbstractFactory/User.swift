//
//  User.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/20.
//

import Foundation
import UIKit

class User {
    
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


protocol UserProtocol: AnyObject {
    
    func insertUser(user: User)
    func getUser(id: Int)
    init()
}


class SQLServerUser: UserProtocol {
    
    required init() {}
    
    func insertUser(user: User) {
        print("在 SQL Server 中新增 User \(user.name) 紀錄")
    }
    
    func getUser(id: Int) {
        print("從 SQL Server 中取得 User id 為 \(id) 紀錄")
    }
}


class AccessUser: UserProtocol {
    
    required init() {}
    
    func insertUser(user: User) {
        print("在 Access 中新增 User \(user.name) 紀錄")
    }
    
    func getUser(id: Int) {
        print("從 Access 中取得 User id 為 \(id) 紀錄")
    }
}
