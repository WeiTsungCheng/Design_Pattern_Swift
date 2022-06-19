//
//  BuilderViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import UIKit

class BuilderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let p1 = Pen(color: "yellow")
        let g1 = Graphic(name: "N1")
        let b1 = ThinPersonBuilder(g: g1, p: p1)
        let d1 = PersonDirector(b: b1)
        d1.createPerson()
        
        
        let p2 = Pen(color: "red")
        let g2 = Graphic(name: "N2")
        let b2 = FatPersonBuilder(g: g2, p: p2)
        let d2 = PersonDirector(b: b2)
        d2.createPerson()
        
    }
    

}
