//: Playground - noun: a place where people can play

import UIKit

//LESSON № 5
//BASIC OPERATORS

//1. Calculate time in seconds
var myDateOfBirth: (date: Int, month: Int) = (21, 1)

//count of seconds in 24 hours
var secondsInDay  = 60 * 60 * 24
var secondsToMyBD = secondsInDay * myDateOfBirth.month * myDateOfBirth.date

print("From the beginning of the year before my birthday: \(secondsToMyBD) seconds")

//2.
if myDateOfBirth.month >= 1 && myDateOfBirth.month < 4 {
    print("I was born in first quarter.")
} else if myDateOfBirth.month >= 4 && myDateOfBirth.month < 7  {
    print("I was born in second quarter.")
} else if myDateOfBirth.month >= 7 && myDateOfBirth.month < 10  {
    print("I was born in third quarter.")
} else if myDateOfBirth.month >= 10 && myDateOfBirth.month < 13  {
    print("I was born in fourth quarter.")
}

//3.
var aa = 2
var bb = 4
var cc = 1
var dd = 0
var ee = -1

//var sumParam = aa++ + --dd - ++ee + ++bb - cc++

//4.
var cellTupl = (x: 2, y: 3)

if (cellTupl.x + cellTupl.y) % 2 == 0 {
    print("It's black.")
} else {
    print("It's white.")
}
