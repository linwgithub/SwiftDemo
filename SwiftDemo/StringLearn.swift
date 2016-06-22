//
//  StringLearn.swift
//  SwiftDemo
//
//  Created by pollysoft on 16/4/1.
//  Copyright © 2016年 microi. All rights reserved.
//

import Foundation

class StringLearn{
    
    var stringOfStringLearn = "simple"
    func StringLearnDescript() -> String{
        return "string of StringLearn : " + stringOfStringLearn
    }
    
    //构造函数
    init() {
        self.name = "without name"//self被用来区别实例变量
        self.stringOfStringLearn = "init Simple"
    }
    
    var name : String
    //构造函数
    init(name : String) {
        self.name = name
        self.stringOfStringLearn = "init Simple"
    }
    
    var firstStringOf = "first"
    func firstString() -> String{
    return "first"
    }
    
}
