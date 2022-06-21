//
//  Work.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import Foundation

class Work {
    
    var hour: Double = 0.0
    private var _finish: Bool = false
    
    var current: State
    
    var isTaskFinished: Bool {
        get {
            return _finish
        }
        
        set {
            _finish = newValue
        }
    }
    
    init(current: State = ForenoonState()) {
        self.current = current
    }
    
    func setState(state: State) {
        self.current = state
    }
    
    func programing() {
        current.writeProgarm(work: self)
    }
   
//    deinit {
//        print("Delte Work")
//    }
}
