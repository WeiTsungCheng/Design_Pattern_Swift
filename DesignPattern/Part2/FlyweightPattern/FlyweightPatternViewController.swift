//
//  FlyweightPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/7/2.
//

import UIKit

class FlyweightPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
        let wf = WebsiteFactory()
        
        let w1: ConcreteWebsite = wf.getWebSiteCategory(key: "商品展示網站") as! ConcreteWebsite
        w1.use(user: WebUser(name: "小名"))
        
        let w2 = wf.getWebSiteCategory(key: "商品展示網站")
        w2.use(user: WebUser(name: "小滑"))
        
        let w3 = wf.getWebSiteCategory(key: "部落格")
        w3.use(user: WebUser(name: "小疼"))
        
        let w4 = wf.getWebSiteCategory(key: "商品展示網站")
        w4.use(user: WebUser(name: "小英"))
        
        let w5: ConcreteWebsite = wf.getWebSiteCategory(key: "商品展示網站") as! ConcreteWebsite
        w5.use(user: WebUser(name: "小龍"))
        
        let ww1: UnsharedConcreteWebsite = UnsharedConcreteWebsite(name: "商品展示網站")
        ww1.use(user: WebUser(name: "洛克"))
        let ww2: UnsharedConcreteWebsite = UnsharedConcreteWebsite(name: "相片牆")
        ww2.use(user: WebUser(name: "魯夫"))
    
        
        print(w1 === w5)
        print(wf.flyweight.count)
    }
    

    

}
