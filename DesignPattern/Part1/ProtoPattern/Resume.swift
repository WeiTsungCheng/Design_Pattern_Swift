//
//  Resume.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/12.
//

import Foundation

class Resume: NSCopying {

    var name: String
    var age: Int
    
    var experience: WorkExperience?
    
    init(name: String, age: Int, experience: WorkExperience? = nil) {
        self.name = name
        self.age = age
        self.experience = experience
    }
    
    func setWorkExperience(company: String, time: String) {
        self.experience = WorkExperience(company: company, time: time)
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        
        let e = self.experience?.copy() as! WorkExperience
        return Resume(name: self.name, age: self.age, experience: e)
    }
    
    func result() {
        print("\(self.name) \(self.age) \(self.experience?.company ?? "") \(self.experience?.time ?? "")")
    }
}

class WorkExperience: NSCopying {

    var company: String
    var time: String
    
    init(company: String, time: String) {
        self.company = company
        self.time = time
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return WorkExperience(company: self.company, time: self.time)
    }
    
    
}
