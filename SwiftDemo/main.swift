//
//  main.swift
//  SwiftDemo
//
//  Created by pollysoft on 16/3/23.
//  Copyright (c) 2016年 microi. All rights reserved.
//

import Foundation

print("Hello, World!")

//声明变量
var my = 42
my = 41
//声明常量
let he = 13

//声明一个float
let myfloat : Float = 4

print("other value turn to string \(my) and " + String(myfloat))

let partA = "hello"
let partB = 14
let total = partA + String(partB)
print(total)

var mystr = "test"

if mystr.isEmpty {
    print("mystr is empty")
}else{
    print("mystris not empty:"+mystr)
}

//for character in "dogsddss??" {
//    print(character)
//}
let forinStr = "tee"
for c in forinStr.characters{
    print(c)
}

var variableString = "Horse"
var iableString = "super"
let css = variableString + iableString
// variableString 现在为 "Horse and carriage"
print(css)

//比较相同
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

//比较前缀
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        ++act1SceneCount
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// prints "There are 5 scenes in Act 1"


var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// prints "6 mansion scenes; 2 cell scenes"

let bigsmil = "bbbsssmmm"

print(bigsmil.uppercaseString)
print(bigsmil.lowercaseString)


var optionalString : String? = "hello"
print(optionalString == nil)//判断是否没有值

//可选类型取值的两种方法
//1 使用if let 判断值
var optionalName : String? = nil//"jack"
var gettingName = "Hello"
if let name = optionalName{
    gettingName = "Hello, \(name)"
}else{
    gettingName = "Hello, user" 
}
print(gettingName)
//2 提供默认值
let newName = optionalName ?? "new User"
print(newName)
