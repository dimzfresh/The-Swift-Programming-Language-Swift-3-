//: Playground - noun: a place where people can play

import UIKit

//LESSON № 7
//Arrays and loops

//Part 1
var arrayDay  = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

//выведите количество дней в каждом месяце (без имен месяцев)
for day in arrayDay {
    print(day)
}

//используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
var arrayMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

if arrayDay.count == arrayMonth.count {
    for i in 0..<arrayMonth.count {
        print("\(arrayMonth[i]): \(arrayDay[i])")
    }
}

//сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
//var dayInMonth : (month : String, day : Int)
var arrayDayInMonth = [("January", 31), ("February", 28), ("March", 31), ("April", 30), ("May", 31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

//for var i = 0; i < arrayMonth.count; i++ {
//    dayInMonth.month   = arrayMonth[i]
//    dayInMonth.day     = arrayDay[i]
//    arrayDayInMonth[i] = dayInMonth
//}

//сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)
for (month, day) in arrayDayInMonth.enumerated() {
    print("\(month): \(day)")
}

//for var i = (arrayDay.count - 1); i >= 0; i -= 1 {
//    print(arrayDay[i])
//}

//для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
var tempTuple :(month : String, day : Int) = ("March", 15)
var amountDays = tempTuple.day
var begin      = false

//for var i = (arrayMonth.count - 1); i >= 0; i -= 1 {
//    if begin {
//        amountDays += arrayDay[i]
//    }
//    if arrayMonth[i] == tempTuple.month {
//        begin = true
//    }
//}
//
//print(amountDays)

//Part 2
//Сделайте первое задание к уроку номер 4 используя массивы:
//
//(создайте массив опшинал интов и посчитайте сумму)
//
//- в одном случае используйте optional binding
//- в другом forced unwrapping
//- а в третьем оператор ??

var arrayOptional : [Int?] = [5, 4, nil, nil, 6]

var sumNumbers = 0

//optional binding
for number in arrayOptional {
    if number != nil {
        sumNumbers += number!
    }
}
print(sumNumbers)

sumNumbers = 0

//forced unwrapping
for number in arrayOptional {
    if var tempNumber = number {
        sumNumbers += tempNumber
    }
}
print(sumNumbers)

sumNumbers = 0

//оператор ??
for number in arrayOptional {
    var tempN  = number ?? 0
    if tempN != 0 {
        sumNumbers += tempN
    }
}
print(sumNumbers)

//Part 3
//создайте строку алфавит и пустой массив строк
//
//в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте
//массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед

var newAlfabet   = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
var arrayAlfabet = [String]()

for character in newAlfabet.characters {
    arrayAlfabet.insert(String(character), at: 0)
}

//dictionary

var tempDic = ["bboy" : "би бой", "airtwist" : "воздушный переворот"]

tempDic.isEmpty

tempDic["bboy"]

tempDic["впро"]

tempDic["footwork"] = "работа ногами"

tempDic.keys

if tempDic.updateValue("мальчик брейкер", forKey: "bboy") != nil {
    print("Обновили значение по ключу bboy")
}

var bboy = tempDic["bboy"]

print(bboy)

if var tempBboy = bboy {
    print(tempBboy)
}

//for element in tempDic {
//    print(element)
//}

//do {
//    try 1 + 1
//
//} catch {
//    print("No expections.")
//}


