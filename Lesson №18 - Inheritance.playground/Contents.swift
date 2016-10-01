//: Playground - noun: a place where people can play

import UIKit

//Наследование

//1. Создайте базовый класс артист с "именем", "фамилией" и методом "выступление". У каждого дочернего класса свой метод "выступление" (актер - играет, клоун - развлекает, танцор - танцует), включающее в себя представление участника, в каком жанре выступление и действие (можно просто вывод строки). Создайте дочерний класс "художник", который не хочет, чтобы его называли вы и всегда ставит другое имя, когда вы пытаетесь его назвать. Положить все экземпляры в один массив и пройдясь по нему вызвать у всех выступление.

class Artist {
    
    var firstName: String = ""
    var lastName: String  = ""
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName  = lastName
    }
    
    func performance() -> String {
        return firstName + " " + lastName + " is actor."
    }
}

class Musician: Artist {
    
    override func performance() -> String {
        return self.firstName + " " + self.lastName + " is musician."
    }
}

class Dancer: Artist {
    
    var favouriteMusic = "funk"
    
    override func performance() -> String {
        return self.firstName + " " + self.lastName + " is bboy."
    }
}

class Painter: Artist {
    
    override func performance() -> String {
        return super.firstName + " " + super.lastName + " paints pictures."
    }
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: "The famous ", lastName: "painter")
    }
}

let artist = Artist(firstName: "Ivan", lastName: "Volkov")
artist.performance()

let musician = Musician(firstName: "James", lastName: "Brawn")
musician.performance()

let dancer = Dancer(firstName: "Dimz", lastName: "Fresh")
dancer.favouriteMusic
dancer.performance()

let painter = Painter(firstName: "Vlad", lastName: "Zykov")
painter.performance()

for person in [artist, musician, dancer, painter] {
    person.performance()
}


//2. Базовый класс - "транспортное средство"; свойства - скорость, вместимость, стоимость одной перевозки (все computed properties). Несколько дочерних классов (самолет, корабль, вертолет, машина, поезд) с переопределенными свойствами (для каждого своя скорость вместимость и стоимость). Создать по одному объекту каждому дочернему классу. У всех есть метод, который что-то расчитывает (скорость, расстояние, количество пассажиров), конкретно сколько уйдет денег и времени, чтобы перевести определенное количество человек из пункта А в пункт В. При перевозке 100 и 1000 человек ответить на следующие вопросы:
//-Как быстро мы сможем это сделать и каким транспортом?
//-Стоимость всех перевозок и количество?
//-Какой транспорт быстрее справится и какой более выгодный?

class Transport {
    var speed: Double {
        return 0
    }
    
    var capacity: Double {
        return 0
    }
    
    var price: Double {
        return 0
    }
    
    func calculate(distance: Double, count: inout Double) -> [String : Double] {
        
        let totalTime  = distance > 0 ? distance / speed : 0
        var totalPrice = 0.0
        var totalCount = 0.0
        
        while capacity < count {
            totalPrice = totalPrice + (capacity * price)
            count -= capacity
            totalCount += 1
        }
        
        totalPrice = count > 0 ? totalPrice + (count * price) : totalPrice
        totalCount = count > 0 ? totalCount + 1 : 0
        
        var dict = [String : Double]()
        dict.updateValue(totalTime , forKey: "totalTime")
        dict.updateValue(totalCount, forKey: "totalCount")
        dict.updateValue(totalPrice, forKey: "totalPrice")
        
        return dict
    }
}

class Car: Transport {
    override var speed: Double {
        return 120
    }
    override var capacity: Double {
        return 5
    }
    override var price: Double {
        return 10
    }
}

class Airplane: Transport {
    override var speed: Double {
        return 860
    }
    override var capacity: Double {
        return 150
    }
    override var price: Double {
        return 5000
    }
}

class Ship: Transport {
    override var speed: Double {
        return 300
    }
    override var capacity: Double {
        return 60
    }
    override var price: Double {
        return 1500
    }
}

class Train: Transport {
    override var speed: Double {
        return 130
    }
    override var capacity: Double {
        return 400
    }
    override var price: Double {
        return 1200
    }
}

let car = Car()
let airplane = Airplane()
let ship = Ship()
let train = Train()

for transport in [car, airplane, ship, train] {
    var count = 100.0
    let dictCar = transport.calculate(distance: 120, count: &count)
    print(dictCar)
}


//3. Пять классов: люди, собаки, жирафы, обезьяны и крокодилы. Сделайте по парочке объектов каждого класса. Создать такой родительский класс, который будет группировать их. Создать массив с пресмыкающимися и посчитать их количество, потом также создать массив и посчитать сколько четвероногих, животных и живых. Массивы не содержат тип Any.

