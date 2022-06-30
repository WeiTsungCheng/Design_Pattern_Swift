//
//  Manager.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/1.
//

import Foundation

class Manager {
    var name: String
    var superior: Manager?
    
    init(name: String) {
        self.name = name
    }
    
    func setSuperior(superior: Manager) {
        self.superior = superior
    }
    
    func requestApplication(request: Request) {
        
    }
}


class CommonManager: Manager {
    
    override init(name: String) {
        super.init(name: name)
    }
    
    override func requestApplication(request: Request) {
        
        if (request.requestType == "DayOff" && request.number <= 2) {
            
            print(" \(name) 批准 \(request.requestType) \(request.requestContent) \(request.number)")
        } else {
            if let superior = superior {
                superior.requestApplication(request: request)
            }
        }
    }
}


class MajorDemo: Manager {
    
    override init(name: String) {
        super.init(name: name)
    }
    
    override func requestApplication(request: Request) {
        
        if (request.requestType == "DayOff" && request.number <= 5) {
            
            print(" \(name) 批准 \(request.requestType) \(request.requestContent) \(request.number)")
        } else {
            if let superior = superior {
                superior.requestApplication(request: request)
            }
        }
    }
}




class GeneralManager: Manager {
    
    override init(name: String) {
        super.init(name: name)
    }
    
    override func requestApplication(request: Request) {
        
        if (request.requestType == "DayOff") {
            print(" \(name) 批准 \(request.requestType) \(request.requestContent) \(request.number)")
        
        } else if (request.requestType == "Promote" && request.number < 500) {
            print(" \(name) 批准 \(request.requestType) \(request.requestContent) \(request.number)")
        
        } else if (request.requestType == "Promote" && request.number > 500) {
            print(" \(name) 拒絕 \(request.requestType) \(request.requestContent) \(request.number)")
            
        } else {
            print(" \(name) 拒絕 \(request.requestType) \(request.requestContent) \(request.number)")
        }
        
    }
}


