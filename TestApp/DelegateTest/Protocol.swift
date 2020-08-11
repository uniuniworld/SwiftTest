//
//  Protocol.swift
//  TestApp
//
//  Created by Takahiro Kirifu on 2020/08/09.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import Foundation

protocol greetingDelegate {
    
    func sayHello()
    func sayName()
    func sayAge()
    
}

extension greetingDelegate {
//    func sayName() {
//        print("My name is")
//    }
    
    
    // extensionでデフォルト実装をしている
    // 適合したクラスでsayAge()メソッド処理しなくても怒られない
    // 実装せずに呼び出したい時
    func sayAge() {
        print("My age is 10")
    }
}

final class Person {
    
    var delegate: greetingDelegate?
    
    func greet() {
        
        guard let delegate = delegate else {
            print("No Person")
            return
        }
        
        if type(of: delegate) == John.self {
            delegate.sayHello()
            delegate.sayName()
        } else if type(of: delegate) == Jack.self {
            delegate.sayHello()
            delegate.sayName()
            delegate.sayAge()
        }
    }
    
}
