//
//  Jack.swift
//  TestApp
//
//  Created by Takahiro Kirifu on 2020/08/09.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import Foundation

final class Jack: greetingDelegate {
    func sayHello() {
        print("Hello")
    }
    
    func sayName() {
        print("My name is Jack")
    }
    
    // デフォルト実装を上書き
    func sayAge() {
        print("My age is 25")
    }
}
