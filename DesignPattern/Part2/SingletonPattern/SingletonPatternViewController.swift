//
//  SingletonPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/25.
//

import UIKit

class SingletonPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let s1 = Singleton.shared
        let s2 = Singleton.shared
        print(s1 === s2)
        
        
        let sm1 = StoreManagerOne.shared
        sm1.add(Computer(name: "A1"))
        sm1.add(Computer(name: "C1"))
        sm1.add(Computer(name: "A2"))
        sm1.add(Computer(name: "B2"))
        sm1.add(Computer(name: "B1"))
        sm1.add(Computer(name: "A3"))
        
        sm1.remove(Computer(name: "B1"))
        
        let cs1 = sm1.getComputers()
        cs1.forEach { c in
            print(c.name)
        }
        
        
//        let sm2 = StoreManagerTwo.shared
//        sm2.add(Computer(name: "A1"))
//        sm2.add(Computer(name: "C1"))
//        sm2.add(Computer(name: "A2"))
//        sm2.add(Computer(name: "B2"))
//        sm2.add(Computer(name: "B1"))
//        sm2.add(Computer(name: "A3"))
//
//        sm2.remove(Computer(name: "C1"))
//
//        let cs2 = sm2.getComputers()
//        cs2.forEach { c in
//            print(c.name)
//        }
        
        
        
    }
}
