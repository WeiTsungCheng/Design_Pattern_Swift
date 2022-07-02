//
//  Action.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import Foundation
import CoreText

protocol ActionProtocol {
    
    func getManClusion(man: Man)
    func getWomanClusion(woman: Woman)
}

class Success: ActionProtocol {
   
    func getManClusion(man: Man) {
        print("\(man) 成功就是有好老婆")
    }
    
    func getWomanClusion(woman: Woman) {
        print("\(woman) 成功就是有好老公")
    }
    
    
}


class Failure: ActionProtocol {
    func getManClusion(man: Man) {
        print("\(man) 失敗就是有壞老婆")
    }
    
    func getWomanClusion(woman: Woman) {
        print("\(woman) 失敗就是有壞老公")
    }
    
}


class Marriage: ActionProtocol {
    
    func getManClusion(man: Man) {
        print("\(man) 結婚是男孩變成男人的過程)")
    }
    
    func getWomanClusion(woman: Woman) {
        print("\(woman) 結婚是女孩變成女人的過程")
    }
    
    
}
