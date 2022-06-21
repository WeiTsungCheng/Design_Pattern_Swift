//
//  EventHandler.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

protocol Invocable: AnyObject {
    func invoke(data: Any)
}


class EventHandlerWrapper<T: AnyObject, U>: Invocable, Disposable {
    
    weak var target: T?
    let handler: (T) -> (U) -> ()
    let event: Event<U>
    
    init(target: T?, handler: @escaping (T) -> (U) -> (), event: Event<U>) {
        self.target = target
        self.handler = handler
        self.event = event;
    }
    
    func invoke(data: Any) -> () {
        if let t = target {
            handler(t)(data as! U)
        }
    }
    
    func dispose() {
        event.eventHandlers =
        event.eventHandlers.filter { $0 !== self }
    }
}

public protocol Disposable {
    func dispose()
}
