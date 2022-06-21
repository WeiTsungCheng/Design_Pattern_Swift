//
//  State.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import Foundation

protocol WriteProgramProtocol {
    
    func writeProgarm(work: Work)
}

class State: WriteProgramProtocol {
    
    func writeProgarm(work: Work) {
        
    }
    
}

class ForenoonState: State {
    
    override func writeProgarm(work: Work) {
        if work.hour < 12 {
            print("現在 \(work.hour): 精神好")
        } else {
            work.setState(state: NoonState())
            work.programing()
        }
    }
    
//    override init() {
//        print("init ForenoonState")
//    }
//
//    deinit {
//        print("Delte ForenoonState")
//    }
}

class NoonState: State {
    
    override func writeProgarm(work: Work) {
        if work.hour < 13 {
            print("現在 \(work.hour): 餓惹")
        } else {
            work.setState(state: AfternoonState())
            work.programing()
        }
    }
    
//    override init() {
//        print("init NoonState")
//    }
//
//    deinit {
//        print("Delte NoonState")
//    }
}

class AfternoonState: State {
  
    override func writeProgarm(work: Work) {
        if work.hour < 17 {
            print("現在 \(work.hour): 有點累")
        } else {
            work.setState(state: EveningState())
            work.programing()
        }
    }
    
}


class EveningState: State {
    
    override func writeProgarm(work: Work) {
        
        if work.isTaskFinished {
            
            work.setState(state: RestState())
            work.programing()
            
        } else {
            
            if work.hour < 21 {
                print("現在 \(work.hour): 很累了")
            } else {
                work.setState(state: SleepState())
                work.programing()
            }
            
        }
        

    }
    
}

class RestState: State {
    
    override func writeProgarm(work: Work) {
        print("現在 \(work.hour): 可以下班休息")
    }
    
}


class SleepState: State {
    
    override func writeProgarm(work: Work) {
        print("現在 \(work.hour): 加班太晚了下班")
    }
    
}
