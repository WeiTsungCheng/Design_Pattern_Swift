//
//  Event.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/19.
//

import Foundation

public class Event<T> {
    
    public typealias EventHandler = (T) -> ()
    
    var eventHandlers = [Invocable]()
    
    public func raise(data: T) {
        for handler in self.eventHandlers {
            handler.invoke(data: data)
        }
    }
    
    public func addHandler<U: AnyObject>(target: U,
                                         handler: @escaping (U) -> EventHandler) -> Disposable {
        let wrapper = EventHandlerWrapper(target: target,
                                          handler: handler, event: self)
        eventHandlers.append(wrapper)
        return wrapper
    }
}
