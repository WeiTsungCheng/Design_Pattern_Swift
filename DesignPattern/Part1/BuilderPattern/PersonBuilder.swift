//
//  PersonBuilder.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

struct Graphic {
    let name: String
    func draw(p: Pen, x: Double, y: Double) {
        print("\(p.color) pen draw, x:\(x) y:\(y) on \(name) graphic")
    }
}

struct Pen {
    let color: String
}

protocol BuildPersonProtocol {
    func buildHead()
    func buildBody()
    func buildHands()
    func buildFoots()
}

class PersonBuilder: BuildPersonProtocol {

    let graphic: Graphic
    let pen: Pen
    
    init(g: Graphic, p: Pen) {
        self.graphic = g
        self.pen = p
    }
    
    func buildHead() {
    }
    
    func buildBody() {
    }
    
    func buildHands() {
    }
    
    func buildFoots() {
    }
}

final class FatPersonBuilder: PersonBuilder {
    
    override func buildHead() {
        print("build head:")
        graphic.draw(p: pen, x: 1, y: 1)
    }
    
    override func buildBody() {
        print("build body:")
        graphic.draw(p: pen, x: 10, y: 10)
    }
    
    override func buildHands() {
        print("build hands:")
        graphic.draw(p: pen, x: 2, y: 2)
    }
    
    override func buildFoots() {
        print("build foots:")
        graphic.draw(p: pen, x: 3, y: 3)
    }
}

final class ThinPersonBuilder: PersonBuilder {
    
    override func buildHead() {
        print("build head:")
        graphic.draw(p: pen, x: 1, y: 1)
    }
    
    override func buildBody() {
        print("build body:")
        graphic.draw(p: pen, x: 5, y: 5)
    }
    
    override func buildHands() {
        print("build hands:")
        graphic.draw(p: pen, x: 2, y: 2)
    }
    
    override func buildFoots() {
        print("build foots:")
        graphic.draw(p: pen, x: 3, y: 3)
    }
}

