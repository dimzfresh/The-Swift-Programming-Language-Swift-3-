//: Playground - noun: a place where people can play

import UIKit

//LESSON № 2

//Примитивные типы:
print("Min size of Integer8: \(Int8.min)")
print("Max size of Integer8: \(Int8.max)")

print("Min size of UInteger8: \(UInt8.min)")
print("Max size of UInteger8: \(UInt8.max)")

print("Min size of Integer16: \(Int16.min)")
print("Max size of Integer16: \(Int16.max)")

print("Min size of UInteger16: \(UInt16.min)")
print("Max size of UInteger16: \(UInt16.max)")

print("Min size of Integer32: \(Int32.min)")
print("Max size of Integer32: \(Int32.max)")

print("Min size of UInteger32: \(UInt32.min)")
print("Max size of UInteger32: \(UInt32.max)")

print("Min size of Integer64: \(Int64.min)")
print("Max size of Integer64: \(Int64.max)")

print("Min size of UInteger64: \(UInt64.min)")
print("Max size of UInteger64: \(UInt64.max)")

//Объявить три константы c типами Int, Double и Float
//Найти три суммы разных типов

let a         = 5
let b         = 3.2
let c: Float  = 4.8752222222

let sumOfInt     = Int(Double(a) + b + Double(c))
let sumOfDouble  = Double(a) + b + Double(c)
let sumOfFloat   = Float(a) + Float(b) + c

if sumOfDouble > Double(sumOfInt) {
    
    print("sumOfDouble is bigger then sumOfInt")
    
} else if sumOfDouble == Double(sumOfInt) {
    
    print("sumOfDouble is equal sumOfInt")
    
} else {
    
    print("sumOfInt is bigger then sumOfDouble")
    
}
