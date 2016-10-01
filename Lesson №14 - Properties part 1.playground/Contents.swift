//: Playground - noun: a place where people can play

import UIKit
import Foundation

//1. Самостоятельно повторить проделанное в уроке

//2. Добавить студенту property «Дата рождения» (пусть это будет еще одна структура, содержащая день, месяц, год) и два computed property: первое — вычисляющее его возраст, второе — вычисляющее, сколько лет он учился (считать, что он учился в школе с 6 лет, если студенту меньше 6 лет — возвращать 0)

struct Student {
    
    var firstName : String {
        
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
            
            self.firstName = firstName.capitalized
        }
    }
    
    var lastName : String {
        didSet {
            self.lastName = lastName.capitalized
        }
    }
    
    var surName : String {
        didSet {
            self.surName = surName.capitalized
        }
    }
    
    var fullName : String {
        
        get {
            return firstName + " " + lastName + " " + surName
        }
        set {
            print("fullName wants to be set to " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName  = words[1]
            }
            
            if words.count > 2 {
                surName   = words[2]
            }
        }
    }
    
    var birth: Birthday
    
    struct Birthday {
        var day:   Int
        var month: Int
        var year:  Int
        let currentYear  = Int((NSDate().description as NSString).substring(to: 4))!
        let currentMonth = Int((NSDate().description as NSString).substring(with: NSRange.init(location: 5, length: 2)))!
        let currentDay   = Int((NSDate().description as NSString).substring(with: NSRange.init(location: 8, length: 2)))!
        
        var age: Int {
            
            get {
                if currentMonth < month {
                    return currentYear - year - 1
                } else if currentMonth > month {
                    return currentYear - year
                } else if currentMonth == month {
                    if currentDay < day {
                        return currentYear - year - 1
                    } else {
                        return currentYear - year
                    }
                }
                return self.age
            }
            set {
                newValue
            }
        }
        
        var yearsOfStuding: Int {
            
            get {
                if self.age < 6 {
                    return 0
                }
                return self.age - 6
            }
            
            set {
                newValue
            }
        }
    }
}


var student  = Student(firstName: "Pasha", lastName: "Kasha", surName: "Valerich", birth: Student.Birthday(day: 21, month: 3, year: 1989))

student.birth.age
student.birth.yearsOfStuding

//3. Создать структуру «Отрезок», содержащую две внутренние структуры «Точки». Структуру «Точка» создать самостоятельно, несмотря на уже имеющуюся в Swift’е. Таким образом, структура «Отрезок» содержит две структуры «Точки» — точки A и B (stored properties). Добавить два computed properties: «середина отрезка» и «длина» (считать математическими функциями)

struct Line {
    
    struct Point {
        var x: Double
        var y: Double
    }
    
    var a: Line.Point
    var b: Line.Point
    
    var length: Double {
        get {
            return sqrt(pow(a.x - b.x, 2.0) + pow(a.y - b.y, 2.0))
        }
        set {
            b.x = a.x + (b.x - a.x) * newValue / length
            b.y = a.y + (b.y - a.y) * newValue / length
        }
    }
    
    var middle: Line.Point  {
        
        get {
            return Line.Point(x: (b.x + a.x)/2, y: (b.y + a.y)/2)
        }
        
        set {
            b.x = newValue.x * 2 - a.x
            b.y = newValue.y * 2 - a.y
        }
        
    }
    
}

var newLine = Line(a: Line.Point(x: 2.0, y: 1.0), b: Line.Point(x: 4.0, y: 2.0))

newLine.length
//newLine.length = 4.0
//newLine.length
//newLine.a.x
//newLine.b.x
newLine.middle = Line.Point(x: 5.0, y: 1.0)
newLine.b.x
newLine.b.y




