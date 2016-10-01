//: Playground - noun: a place where people can play

import UIKit

//1. Создать структуру “Описание файла” содержащую свойства:
//- путь к файлу
//- имя файла
//- максимальный размер файла на диске
//- путь к папке, содержащей этот файл
//- тип файла (скрытый или нет)
//- содержимое файла (можно просто симулировать контент)
//
//Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.

struct File {
    static var catalog = "//Documents/"
    static var size    = 256
    var isVisible      = true
    
    var pathFile: String {
        didSet {
            pathFile = File.catalog + self.pathFile.lowercased()
        }
    }
    
    var nameFile: String {
        didSet {
            nameFile = pathFile + "/" + self.nameFile.lowercased()
        }
    }
    
    var description: String {
        didSet {
            if isVisible {
                description = self.description.capitalized
            } else {
                description = "File is not visible. You can not write description."
            }
        }
    }

}

var file = File(isVisible: true, pathFile: "", nameFile: "book.txt", description: "My favourite book.")
file.description
file.pathFile = "superFolder"
file.pathFile

file.isVisible   = false
file.description = "My favourite book."
file.description

//2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение 
//   должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество    
//   цветов в гамме, начальный цвет и конечный цвет.
enum Colors: Int {
    case Red   = 0xff0000
    case Green = 0x008000
    case Blue  = 0xff8000
    
    static var count: Int {
        return 3
    }
    
    static var firstColor: Int {
        return Colors.Red.rawValue
    }
    
    static var lastColor: Int {
        return Colors.Blue.rawValue
    }
}

Colors.count
Colors.firstColor
Colors.lastColor


//3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств 
//  непосредственно этому классу чтобы контролировать:
//- минимальный и максимальный возраст каждого объекта
//- минимальную и максимальную длину имени и фамилии
//- минимально возможный рост и вес
//- самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса

class Human {
    
    struct Metric {
        static var refCount  = 0
    }
    
    static var minAge    = 1
    static var maxAge    = 110
    static var minName   = 1
    static var maxName   = 10
    static var minHeight = 50
    static var minWeight = 40
    
    var firstName: String {
        didSet {
            if firstName.characters.count < Human.minName || firstName.characters.count > Human.maxName {
                firstName = oldValue
            } else {
                firstName
            }
        }
    }
    
    var lastName: String {
        didSet {
            if lastName.characters.count < Human.minName || lastName.characters.count > Human.maxName {
               lastName = oldValue
            } else {
                lastName
            }
        }
    }
    
    var age: Int {
        didSet {
            if age < Human.minAge || age > Human.maxAge {
                age = oldValue
            } else {
                age
            }
        }
    }
    
    var height: Int {
        didSet {
            if height < Human.minHeight {
                height = oldValue
            } else {
                height
            }
        }
    }
    
    var weight: Int {
//        get {
//            return self.weight
//        }
//        set {
//            self.weight
//        }
        didSet {
            if weight < Human.minWeight {
                weight = oldValue
            } else {
                weight
            }
        }
    }
    
    init(name: String, lastName: String, age: Int, height: Int, weight: Int) {
       self.firstName = name
       self.lastName  = lastName
       self.age       = age
       self.height    = height
       self.weight    = weight
        
       Human.Metric.refCount += 1
    }
}

var human1 = Human(name: "Ivan" , lastName: "Ivanov"  , age: 45, height: 44, weight: 99)
var human2 = Human(name: "Pedro", lastName: "Rodriges", age: 12, height: 18, weight: 20)
//human2.firstName = "Sam"
//human2.firstName = "dgdsgjdsgkxvxcvxcvcvxvcxvxcvds"
human2.firstName

human2.age = 120
human2.age

human2.height = 5
human2.height

human2.weight = 4
human2.weight


Human.Metric.refCount
