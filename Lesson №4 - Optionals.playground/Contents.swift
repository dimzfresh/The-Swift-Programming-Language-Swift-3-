//: Playground - noun: a place where people can play

import UIKit

//LESSON № 4
//OPTIONALS
//1. Создать пять строковых констант
// Одни константы это только цифры, другие содержат еще и буквы
// Найти сумму всех этих констант приведя их к Int
// (Используйте и optional binding и forced unwrapping)

let firstString  : String = "10"
let secondString : String = "05"
let thirdString  : String = "try56"
let forthString  : String = "6"
let fifthString  : String = "oh3"

var sumInt = 0

//optional binding
if Int(firstString) != nil {
    //it's Int type
    sumInt += Int(firstString)!
}
if Int(secondString) != nil {
    //print("it's Optional type:")
    //print(Int(secondString))
    sumInt += Int(secondString)!
}
if Int(thirdString) != nil {
    //it's Int type
    sumInt += Int(thirdString)!
}
if Int(forthString) != nil {
    //it's Int type
    sumInt += Int(forthString)!
}
if Int(fifthString) != nil {
    //it's Int type
    sumInt += Int(fifthString)!
}

//forced unwrapping
sumInt = 0

if var firstInt = Int(firstString) {
    //it's Int type
    sumInt += firstInt
}
if var secondInt = Int(secondString) {
    //it's Int type
    sumInt += secondInt
}
if var thirdInt = Int(thirdString) {
    //it's Int type
    sumInt += thirdInt
}
if var forthInt = Int(forthString) {
    //it's Int type
    sumInt += forthInt
}
if var fifthInt = Int(fifthString) {
    //it's Int type
    sumInt += fifthInt
}

//2. С сервера к нам приходит тюпл с тремя параметрами:
// statusCode, message, errorMessage (число, строка и строка)
// в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле
// если statusCode от 200 до 300 исключительно, то выводите message,
// в противном случает выводите errorMessage
// После этого проделайте тоже самое только без участия statusCode

//2.1
var serverInformation : (statusCode: Int, message: String?, errorMessage: String?) = (0, "OK", "Error 404")

if (serverInformation.statusCode >= 200) && (serverInformation.statusCode < 300) {
    if serverInformation.message != nil {
        print(serverInformation.message!)
    } else {
        print("Oops!")
    }
} else {
    if serverInformation.errorMessage != nil {
        print(serverInformation.errorMessage!)
    } else {
        print("Oops!")
    }
}

//2.2 server fall down
var serverInformation2 : (message: String?, errorMessage: String?) = ("OK", "Error 404")
if serverInformation2.message != nil {
    print(serverInformation2.message!)
} else {
    print(serverInformation2.errorMessage!)
}

//3.Создайте 5 тюплов с тремя параметрами:
//имя, номер машины, оценка за контрольную
//
//при создании этих тюплов не должно быть никаких данных
//
//после создания каждому студенту установите имя
//
//некоторым установите номер машины
//
//некоторым установите результат контрольной
//
//выведите в консоль:
//
//- имена студента
//- есть ли у него машина
//- если да, то какой номер
//- был ли на контрольной
//- если да, то какая оценка

var studentInfo1: (Name: String?, carNumber: Int?, markExam: Int?)
var studentInfo2: (Name: String?, carNumber: Int?, markExam: Int?)
var studentInfo3: (Name: String?, carNumber: Int?, markExam: Int?)
var studentInfo4: (Name: String?, carNumber: Int?, markExam: Int?)
var studentInfo5: (Name: String?, carNumber: Int?, markExam: Int?)

studentInfo1 = ("Nick"   , nil, 4)
studentInfo2 = ("Patrick", nil, nil)
studentInfo3 = ("Misha"  , 777, nil)
studentInfo4 = ("Denis"  , 349, 5)
studentInfo5 = ("Sandra" , 880, 5)

//Student's marks for exam:
if var tempMark = studentInfo1.markExam {
    print("\(studentInfo1.Name) was at exam and his mark: \(tempMark)")
}
if var tempMark = studentInfo2.markExam {
    print("\(studentInfo2.Name) was at exam and his mark: \(tempMark)")
}
if var tempMark = studentInfo3.markExam {
    print("\(studentInfo3.Name) was at exam and his mark: \(tempMark)")
}
if var tempMark = studentInfo4.markExam {
    print("\(studentInfo4.Name) was at exam and his mark: \(tempMark)")
}
if var tempMark = studentInfo5.markExam {
    print("\(studentInfo5.Name) was at exam and his mark: \(tempMark)")
}

//Student's cars:
if var tempCar = studentInfo1.carNumber {
    print("\(studentInfo1.Name) has a car with number: \(tempCar)")
}
if var tempCar = studentInfo2.carNumber {
    print("\(studentInfo2.Name) has a car with number: \(tempCar)")
}
if var tempCar = studentInfo3.carNumber {
    print("\(studentInfo3.Name) has a car with number: \(tempCar)")
}
if var tempCar = studentInfo4.carNumber {
    print("\(studentInfo4.Name) has a car with number: \(tempCar)")
}
if var tempCar = studentInfo5.carNumber {
    print("\(studentInfo5.Name) has a car with number: \(tempCar)")
}

