//
//  TeacherPaper.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/13.
//

import Foundation

class TeacherPaper {
    
    func testQ1() {
        print("3 + 5 = ")
        answerQ1()
    }
    
    func testQ2() {
        print("3 - 5 = ")
        answerQ2()
    }
    
    func testQ3() {
        print("3 / 5 = ")
        answerQ3()
    }
    
    func answerQ1() {
        print("_")
    }
    
    func answerQ2() {
        print("_")
    }
    
    func answerQ3() {
        print("_")
    }
    
}


class StudentPaper1: TeacherPaper {
    
    override func answerQ1() {
        print("1")
    }
    
    override func answerQ2() {
         print("3")
    }
    
    override func answerQ3() {
        print("6")
    }
}


class StudentPaper2: TeacherPaper {
    
    override func answerQ1() {
        print("1")
    }
    
    override func answerQ2() {
         print("5")
    }
    
    override func answerQ3() {
        print("65")
    }
}
