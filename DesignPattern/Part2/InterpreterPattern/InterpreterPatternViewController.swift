//
//  InterpreterPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import UIKit

class InterpreterPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var context = PlayContext(context: "T 500 O 2 E 0.5 G 0.5 A 3 E 0.5 G 0.5 D 3 E 0.5 G 0.5 A 0.5 O 3 C 1 O 2 A 0.5 G 1 C 0.5 E 0.5 D 3")

        var e = Expression()
        
        
        while !(context.context.isEmpty) {
            
            for i in context.context {
                
                switch i {
                case "T":
                    e = Speed()
                case "O":
                    e = Scale()
                case "C", "D", "E", "F", "G", "A", "B", "P":
                    e = Note()
                default:
                    continue
                }
                
                context = e.interpret(context: context)
            }
        }
        
    }

}
