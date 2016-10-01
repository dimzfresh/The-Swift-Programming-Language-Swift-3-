//: Playground - noun: a place where people can play

import UIKit

//LESSON № 8
//Dictionary

//1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(
//
//После всех этих перетрубаций посчитайте общий бал группы и средний бал

var studentsDict = ["Hi hat jr" : 3, "Dim Blikov" : 4, "Maxi Ren" : 3, "Kirusha Stark" : 4]

studentsDict["Maxi Ren"] = 5
studentsDict.updateValue(4, forKey: "Hi hat jr")

studentsDict["Ivan Ivanov"] = 5
studentsDict["Sidorov"]     = 4

studentsDict.removeValue(forKey: "Ivan Ivanov")
studentsDict["Kirusha Stark"] = nil

var sumMark     = 0
for (key, value) in studentsDict {
    sumMark += value
    print("Student's \(key) mark: \(value)")
}

print("Sum of marks: \(sumMark)")
print("Average of marks: \(sumMark / studentsDict.count)")

//2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
//В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
//
var MonthDict = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June" : 30, "July" : 31, "August" : 31, "September" : 30, "October" : 31, "November" : 30, "December" : 31]

for (key, value) in MonthDict {
    print("In \(key) \(value) days.")
}

for key in MonthDict.keys {
    if var days = MonthDict[key] {
        print("In \(key) \(days) days.")
    }
}

//3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
//
//Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).
var chessDict      = [String : Bool] ()
var characterArray = ["a", "b", "c", "d", "e", "f", "g", "h"]
var i = 1

for str in characterArray {
    i += 1
    for j in 1...8 {
        if (i + j) % 2 == 0 {
            chessDict[str + "\(j)"] = false
        } else {
            chessDict[str + "\(j)"] = true
        }
    }
}

for (key, value) in chessDict {
    print("In \(key) \(value) days.")
}

var point = (5, 8)
var nameFriend  = "hi hat jr"

switch point {
    
case (1, 8):
    print("(1, 8) point.")
    
case (1, 8):
    print("(1, 8) point.")
    
case let tempPoint where nameFriend.hasPrefix("hi"):
    print("I have a friend. His name is \(nameFriend).")
    
case (_, 10):
    print("Wild card to x-axis.")
    
default:
    print("def")
}

let anotherPoint = (2, 0)
switch anotherPoint {
    
case (let x, 0) where x > 0:
    print("on the x-axis with an x value of \(x)")
    
case (2, let y):
    print("on the y-axis with a y value of \(y)")
    
case let (x, y):
    print("somewhere else at (\(x), \(y))")
    
}
// prints "on the x-axis with an x value of 2"
