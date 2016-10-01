//: Playground - noun: a place where people can play

import UIKit

//LESSON № 6
//Strings

//1.

let firstString  : String = "10"
let secondString : String = "05"
let thirdString  : String = "try56"
let forthString  : String = "6"
let fifthString  : String = "oh3"

var first  = Int(firstString)  ?? 0
var second = Int(secondString) ?? 0
var third  = Int(thirdString)  ?? 0
var forth  = Int(forthString)  ?? 0
var fifth  = Int(fifthString)  ?? 0

var sumStr = first + second + third + forth + fifth

var firstStr  = first  != 0 ? String(first)  : "nil"
var secondStr = second != 0 ? String(second) : "nil"
var thirdStr  = third  != 0 ? String(third)  : "nil"
var forthStr  = forth  != 0 ? String(forth)  : "nil"
var fifthStr  = fifth  != 0 ? String(fifth)  : "nil"

//Интерполяция строк
print("\(firstStr) + \(secondStr) + \(thirdStr) + \(forthStr) + \(fifthStr) = \(sumStr)")

//Конкатенация строк
var sumCon = firstStr + " + " + secondStr + " + " + thirdStr + " + "
    + forthStr + " + " + fifthStr + " = " + String(sumStr)
//print(first + second + third + forth + fifth + " = " + sumStr)

//2.
let character1 : Character = "\u{1F60D}"
let character2 : Character = "\u{1F34D}"
let character3 : Character = "\u{1F377}"
let character4 : Character = "\u{1F355}"
let character5 : Character = "\u{1F386}"

var characterStr = "\(character1)\(character2)\(character3)\(character4)\(character5)"
print("Check set of unicode: \(characterStr)")

//swift
characterStr.characters.count

//objective C
(characterStr as NSString).length

//3.
var alfabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
//var index   = 0
//
//for word in alfabet.characters {
//    if word == "C" {
//        print("index 'c' in alfabet = \(index)")
//        break
//    }
//    index++
//}

