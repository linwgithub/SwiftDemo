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

print("\(my)")

let partA = "hello"
let partB = 14
let total = partA + String(partB)
print(total)

var mystr : String = "Hello"
print(mystr)

var myTuples = (404,"error")
var (codes,mes) = myTuples
print("\(codes)")

let testint = 4
assert(testint > 0, "asser is run")

print("after assert")

var opt : String? = nil
var opt2 = "ss"

//数组
var myarray = ["Eggs", "Milk"]
myarray.count
myarray.append("happy")
myarray += ["seam","like"]
for ss in myarray{
    print(ss)
}

print(myarray[0])
myarray[1] = "see"
myarray[1...3] = ["bule"]
myarray += ["seam","like"]
for ss in myarray{
    print(ss)
}


