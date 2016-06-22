//
//  StringLearn.swift
//  SwiftDemo
//
//  Created by pollysoft on 16/4/1.
//  Copyright © 2016年 microi. All rights reserved.
//


import Foundation

class StringLearn: NSObject {

    
//    func StringUse(){
//    }
    var firstStringOf = "first"
    func firstString() -> String {
        return "first String is : " + firstStringOf
    }
    
//    注意EquilateralTriangle类的构造器执行了三步：
//    
//    设置子类声明的属性值
//    调用父类的构造器
//    改变父类定义的属性值。其他的工作比如调用方法、getters和setters也可以在这个阶段完成。
    override init() {
       super.init()
        //
    }
}
