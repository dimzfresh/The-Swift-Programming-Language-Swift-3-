//: Playground - noun: a place where people can play

import UIKit
import Foundation

//1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).
let dateFormatter        = DateFormatter()
dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"

struct Student {
    var firstName:   String
    var lastName:    String
    var dateOfBirth: NSDate
    var mark:        Double
}
//Первый вариант сформировать дату рождения
//let calendar          = NSCalendar.currentCalendar()
//let dateComponents    = NSDateComponents()
//dateComponents.day    = 7
//dateComponents.month  = 3
//dateComponents.year   = 1988
//dateComponents.hour   = 0
//dateComponents.minute = 0
//dateComponents.second = 0
//var newDate = calendar.dateFromComponents(dateComponents)

var student1 = Student(firstName: "Ivan", lastName: "Ivanov", dateOfBirth: dateFormatter.date(from: "07-03-1988 00:00:00")! as NSDate, mark: 4.5)
var student2 = Student(firstName: "Kirill", lastName: "Starikov", dateOfBirth: dateFormatter.date(from: "10-04-1987 00:00:00")! as NSDate, mark: 4.0)
var student3 = Student(firstName: "Alex", lastName: "Lebedev", dateOfBirth: dateFormatter.date(from: "29-04-1986 00:00:00")! as NSDate, mark: 5.0)

var student4 = Student(firstName: "Brok", lastName: "Lebedev", dateOfBirth: dateFormatter.date(from: "29-04-1986 00:00:00")! as NSDate, mark: 5.0)

var studentsArray = [student1, student2, student3, student4]

//2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
func printStudent(students: [Student]) {
    var n = 1
    for st in students{
        print("\(n) . ", st.firstName, st.lastName, st.dateOfBirth, st.mark)
        n += 1
    }
}

printStudent(students: studentsArray)

//3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
//var sortedArray = studentsArray.sort { (St1, St2) -> Bool in
//    return St1.mark>St2.mark
//}
var sortedArray1 = studentsArray.sorted {$0.mark > $1.mark}
sortedArray1

//4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.

var sortedArray2 = studentsArray.sorted {
    if $0.lastName == $1.lastName {
       return $0.firstName < $1.firstName
    } else {
      return  $0.lastName < $1.lastName
    }
}
sortedArray2

//5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива. 

var studentsArray1 = studentsArray
studentsArray[0].firstName = "Chubaka"

studentsArray
studentsArray1

//6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?
class StudentClass{
    var firstName:   String
    var lastName:    String
    var dateOfBirth: NSDate
    var mark:        Double
    
    init (firstName: String, lastName: String, dateOfBirth: NSDate, mark: Double) {
        self.firstName   = firstName
        self.lastName    = lastName
        self.dateOfBirth = dateOfBirth
        self.mark        = mark
    }
}

var studentClass1 = StudentClass(firstName: "Ivan", lastName: "Ivanov", dateOfBirth: dateFormatter.date(from: "07-03-1988 00:00:00")! as NSDate, mark: 4.5)
var studentClass2 = StudentClass(firstName: "Kirill", lastName: "Starikov", dateOfBirth: dateFormatter.date(from: "10-04-1987 00:00:00")! as NSDate, mark: 4.0)
var studentClass3 = StudentClass(firstName: "Alex", lastName: "Lebedev", dateOfBirth: dateFormatter.date(from: "29-04-1986 00:00:00")! as NSDate, mark: 5.0)
var studentClass4 = StudentClass(firstName: "Brok", lastName: "Lebedev", dateOfBirth: dateFormatter.date(from: "29-04-1986 00:00:00")! as NSDate, mark: 5.0)

var studentsClassArray1 = [studentClass1, studentClass2, studentClass3, studentClass4]
var studentsClassArray2 = studentsClassArray1

studentsClassArray2[0].firstName = "Chubaka"

studentsClassArray1
studentsClassArray2
