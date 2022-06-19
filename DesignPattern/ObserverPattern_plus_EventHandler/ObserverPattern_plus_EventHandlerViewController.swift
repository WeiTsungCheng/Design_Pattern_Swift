//
//  ObserverPattern_plus_EventHandlerViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import UIKit

class ObserverPattern_plus_EventHandlerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let informer = SecretaryTwo(action: "")
        
        let ob1 = StockObserverTwo(name: "小七", informer: informer)
        let ob2 = NBAObserverTwo(name: "小子", informer: informer)
        
        informer.action = "老版回來了!"
        
        let handler = informer.upadate.addHandler(target: ob1.self, handler: StockObserverTwo.closeStock)
        
        let handlerTwo = informer.upadate.addHandler(target: ob2.self, handler: NBAObserverTwo.closeNBA)
        
        informer.notify()
        
        
        handler.dispose()
        handlerTwo.dispose()
    }
    


}
