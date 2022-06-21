//
//  ObserverPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import UIKit

class ObserverPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let s = Boss(action: "")
        
        let ob1 = StockObserver(name: "小王", informer: s)
        let ob2 = NBAObserver(name: "張三", informer: s)
        
        s.attach(observer: ob1)
        s.attach(observer: ob2)
        
        s.action = "我老版"
        s.notify()
        
        s.detach(observer: ob2)
        s.action = "我回來"
        s.notify()
        
        
    
    }
    


}
