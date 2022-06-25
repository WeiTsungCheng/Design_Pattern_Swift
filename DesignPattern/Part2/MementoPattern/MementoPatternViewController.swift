//
//  MementoPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/22.
//

import UIKit

class MementoPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gr = GameRole()
        gr.setInitailState()
        gr.displayState()
    
        let stateAdmin = RoleStateCaretaker()
        stateAdmin.memento = gr.saveState()
        
        gr.fight()
        gr.fight()
        gr.fight()
        gr.displayState()
        
        gr.recoveryState(memento: stateAdmin.memento!)
        gr.displayState()
    }

}
