//
//  Request.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/1.
//

import Foundation

class Request {
    
    private var _requestType: String
    private var _requestContent: String
    private var _number: Int
    
    var requestType: String {
        get {
            return _requestType
        }
        
        set {
            _requestType = newValue
        }
    }
    
    var requestContent: String {
        get {
            return _requestContent
        }
        
        set {
            _requestContent = newValue
        }
    }
    
    var number: Int {
        get {
            return _number
        }
        
        set {
            _number = newValue
        }
    }
    
    init(requestType: String, requestContent: String, number: Int) {
        self._requestType = requestType
        self._requestContent = requestContent
        self._number = number
    }
    
    
}
