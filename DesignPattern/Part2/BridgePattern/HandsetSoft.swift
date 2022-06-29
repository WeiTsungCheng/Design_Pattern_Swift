//
//  HandsetSoft.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/29.
//

import Foundation

protocol HandsetSoftProtocol {
    
    func run( )
}



class HandsetAddressList: HandsetSoftProtocol {
    
    func run() {
        print("執行通訊錄")
    }
    
}


class HandsetGame: HandsetSoftProtocol {
    
    func run() {
        print("執行遊戲")
    }
}

class HandsetMP3: HandsetSoftProtocol {
    
    func run() {
        print("執行MP3")
    }
}
