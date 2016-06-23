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

//
//  main.swift
//  SwiftDemo
//
//  Created by pollysoft on 16/3/23.
//  Copyright (c) 2016年 microi. All rights reserved.
//

import Foundation

print("Hello, World!")

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

var totals = 0
for i in 0 ..< 4 {
    totals += i
}
print("\(totals)")

//函数
func subNumber(sorces : [Int]) -> (max : Int, min : Int, sum : Int){
    var max = sorces[0]
    var min = sorces[0]
    var sum = 0
    for sorce in sorces{
        if sorce > max {
            max = sorce
        } else if sorce < min{
            min = sorce
        }
        sum += sorce
    }
    return (max, min, sum)
}

let numberSubResult = subNumber([1,2,3,4,5,6,7])

print("\(numberSubResult.sum)")
print("\(numberSubResult.max)")
print("\(numberSubResult.min)")

//函数嵌套&函数传参
func returnAddNum(numberA : Int,numberB : Int) -> Int{
    var numberC = 0;
    func addNumber(){
        numberC = numberA + numberB;
    }
    addNumber()
    return numberC
}

let resultNumber = returnAddNum(returnAddNum(1, numberB: 2), numberB: 3)

print("\(resultNumber)")

/// 闭包
var numbers = [20, 19, 7, 12]

//数组成员×3
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

//数组成员奇数返回1 偶数返回0
let mapedNumbers2 = numbers.map({
    (number : Int) -> Int in
    if (number % 2 == 1){
        return 1
    }else{
        return 0
    }
})
print(mapedNumbers2)

/// 对象&类
//创建一个类
class Shape{
    var numbersForside = 0;
    func simpleDescription() -> String{
        return "simple with number : \(numbersForside)"
    }
}

//创建一个类的对象，点语法来调用类的属性和方法
var shape = Shape()
shape.numbersForside = 7;
print(shape.simpleDescription())

//外部类
var myString = StringLearn()
myString.stringOfStringLearn = "user SImple"
print(myString.StringLearnDescript())

//重写父类方法
var stringSubClass = StringLearnSub()
stringSubClass.firstStringOf = "new one"
print(stringSubClass.firstString())

let maxUInt32 = UInt32.max
print(" \(maxUInt32)")

//类型别名
typealias AutoMyInt = UInt
var myautoInt1 : AutoMyInt
myautoInt1 = 2
print("myAutoInt1 : \(myautoInt1)")

///元组
let http404Error = (404, "not found", "url error")
let (status, message, _) = http404Error
print(message)

let newTuples = (mytuples1 : 200, mytuples2 : "success")//定义是命名
print(newTuples.mytuples1)//通过元组的元素名访问
print(newTuples.1)//通过下表检索访问

let (newStatus, newMessage) = (200, "success")//直接命名
print(newMessage)

//可选类型
var serverResponseCode: Int? = 404
// serverResponseCode 包含一个可选的 Int 值 404
//serverResponseCode = nil
// serverResponseCode 现在不包含值
print(serverResponseCode!)//解包取值

//可选绑定
let possibleNumber = "1hh23"
if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer")
}

//普通可选类型和隐式解析可选类型
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要惊叹号来获取值

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString  // 不需要感叹号

print(implicitString)
//
//var errorTest = LearnThrowError()
//errorTest.takeAnStringrror()

//let age = -3
//assert(age >= 0, "A person's age cannot be less than zero")
// 因为 age < 0，所以断言会触发

///数组
var myIntArray = [Int]()
myIntArray += [12,34]
myIntArray.append(56)
myIntArray[2] = 78
myIntArray.insert(90, atIndex: 0)
myIntArray.removeAtIndex(1)
print("myIntArray : \(myIntArray)")
for myInt in myIntArray {
    print("element of MyIntArray : \(myInt)")
}

for (index, value) in myIntArray.enumerate(){
    print("MyIntArray index : \(index) ; and value : \(value)")
}