//
//  Expression.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import Foundation



class Expression {
    
    func interpret(context: PlayContext) -> PlayContext {
        
        if context.context.isEmpty {
            return PlayContext(context: "")
            
        } else {
            
            var subStringArrray = context.context.split(separator: " ")
            
            let playKey: String = String(subStringArrray.removeFirst())
            let playValue: Double =  Double(String( subStringArrray.removeFirst()))!
            
            excute(key: playKey, value: playValue)
            
            return PlayContext(context: String(subStringArrray.joined(separator: " ")))
        }
        
    }
    
    func excute(key: String, value: Double) {
        
    }
}



class Note: Expression  {
    
    override func excute(key: String, value: Double) {
        
        var note: String = ""
        
        switch key {
            case "C":
            note = "1"
            break
            
            case "D":
            note = "2"
            break
            
            case "E":
            note = "3"
            break
            
            case "F":
            note = "4"
            break
            
            case "G":
            note = "5"
            break
            
            case "A":
            note = "6"
            break
            
            case "B":
            note = "7"
            break
        default:
            break
        }
        
        print(note)
        
    }
    
}


class Scale: Expression {
    
    override func excute(key: String, value: Double) {
        
        var scale: String = ""
        
        switch value {
        case 1:
            scale = "低音"
            break
        case 2:
            scale = "中音"
            break
        case 3:
            scale = "高音"
            break
        default:
            break
        }
        
        print(scale)
    }
}


class Speed: Expression {
    
    override func excute(key: String, value: Double) {
        
        var speed: String = ""
        
        if value < 500 {
            speed = "快速"
        } else if  value >= 500 && value < 1000 {
            speed = "中速"
        } else {
            speed = "慢速"
        }
        
        
        print(speed)
    }
}
