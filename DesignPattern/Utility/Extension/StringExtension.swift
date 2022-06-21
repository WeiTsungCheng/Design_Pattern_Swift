//
//  StringExtension.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/21.
//

import Foundation

extension String {
    
  func swiftClassFromString() -> AnyClass? {
      
      if let appName: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String? {
          
          let classStringName = appName + "." + self
          return NSClassFromString(classStringName)
      }
      
     return nil
  }
}
