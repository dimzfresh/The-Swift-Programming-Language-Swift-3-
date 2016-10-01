//: Playground - noun: a place where people can play

import UIKit

//LESSON № 3
//1. my TUPL
var myTupl = (pushups: 20, pullups: 8, situps: 30)

print("My results: \(myTupl)")

//2. print my results

print("I'm healthy and can:")
print("- pushups: \(myTupl.pushups)")
print("- pullups: \(myTupl.pullups)")
print("- situps: \(myTupl.situps)")

print("I'm healthy and can:")
print("- pushups: \(myTupl.0)")
print("- pullups: \(myTupl.1)")
print("- situps: \(myTupl.2)")

//3. my friend's TUPL
var friendTupl = (pushups: 15, pullups: 16, situps: 45)

//4. change tupl's values

var tempTupl = myTupl
myTupl       = friendTupl
friendTupl   = tempTupl

//5. difference between TUPL's

print("Difference between my and friend's:")
print(" pushups: \(friendTupl.pushups - myTupl.pushups)")
print(" pullups: \(friendTupl.pullups - myTupl.pullups)")
print("  situps: \(friendTupl.situps  - myTupl.situps)")

//var testTupl = (2, 9, 9)
