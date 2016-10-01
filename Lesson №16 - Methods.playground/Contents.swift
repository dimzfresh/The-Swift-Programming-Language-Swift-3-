//: Playground - noun: a place where people can play

import UIKit

//1. Создайте тип Комната. У комнаты есть размеры W на H. И создайте тип Персонаж. У него есть координата в комнате X и Y. Реализуйте функцию, которая красивенько текстом будет показывать положение персонажа в комнате

struct Room {
    static let wall  = "◾️"
    static let floor = "◽️"
    
    static let w = 10
    static let h = 10
}

enum direction {
    case Right
    case Left
    case Top
    case Bottom
}

class Person {
    static let icon = "🏃🏼"
    
    var point: (x: Int, y: Int) {
        didSet {
            point.x = (point.x > 1 && point.x < Room.w) ? point.x : oldValue.x
            point.y = (point.y > 1 && point.y < Room.h) ? point.y : oldValue.y
        }
    }
    init (point: (x: Int, y: Int)) {
        self.point = point
        //self.point.x = point.x
        //self.point.y = point.y
    }
    
    
   static func drawLocation(man: Person, box: Box) {
        
        print()
        
        for w in (1...Room.h).reversed() {
            
            var str = ""
            
            for h in (1...Room.w) {
                
                if w == 1 || w == Room.w {
                    str = str + Room.wall
                } else if h == 1 || h == Room.h {
                    str = str + Room.wall
                } else if w == man.point.x && h == man.point.y {
                    str = str + Person.icon
                } else if w == box.point.x && h == box.point.y {
                    str = str + Box.icon
                } else {
                    str = str + Room.floor
                }
                
            }
            print(str)
        }
        
    }
    
}

class Box {
    static let icon = "💰"
    
    var point: (x: Int, y: Int) {
        didSet {
            point.x = (point.x > 1 && point.x < Room.w) ? point.x : oldValue.x
            point.y = (point.y > 1 && point.y < Room.h) ? point.y : oldValue.y
        }
    }
    
    init (point: (x: Int, y: Int)) {
        self.point = point
    }
}

func moveTo(d: direction, p: Person, b: Box) {
    
    switch d {
    case .Bottom:
        p.point.x  -= 1
        if isEgual(p1: p, p2: b) {
            if isEnd(i: b.point.x) {
               p.point.x += 1
            } else {
               b.point.x -= 1
            }
        }
    case .Top:
        p.point.x  += 1
        if isEgual(p1: p, p2: b) {
            if isEnd(i: b.point.x) {
                p.point.x -= 1
            } else {
                b.point.x += 1
            }
        }
    case .Right:
        p.point.y  += 1
        if isEgual(p1: p, p2: b) {
            if isEnd(i: b.point.y) {
                p.point.y -= 1
            } else {
                b.point.y += 1
            }
        }
    case .Left:
        p.point.y  -= 1
        if isEgual(p1: p, p2: b) {
            if isEnd(i: b.point.y) {
                p.point.y += 1
            } else {
                b.point.y -= 1
            }
        }
    }
}

func isEgual(p1: Person, p2: Box) -> Bool {
    return p1.point.x == p2.point.x && p1.point.y == p2.point.y
}
func isEnd(i: Int) -> Bool {
    return i == 2 || i == 9
}


var newPerson = Person(point: (x: 9, y: 6))
var newBox    = Box(point: (x: 9, y: 7))
Person.drawLocation(man: newPerson, box: newBox)

moveTo(d: .Right, p: newPerson, b: newBox)
Person.drawLocation(man: newPerson, box: newBox)

moveTo(d: .Right, p: newPerson, b: newBox)
Person.drawLocation(man: newPerson, box: newBox)

//moveTo(.Bottom, p: newPerson, b: newBox)
//Person.drawLocation(newPerson, box: newBox)

newBox.point.x
newPerson.point.x


//2. Персонажу добавьте метод идти, который принимает энумчик лево, право, верх, вниз
//Этот метод должен передвигать персонажа. Реализуйте правило что персонаж не должен покинуть пределы комнаты. Подвигайте персонажа и покажите это графически

//3. Создать тип Ящик. У ящика также есть координата в комнате X и Y. Ящик также не может покидать пределы комнаты и ящик также должен быть распечатан вместе с персонажем в функции печати.

//4. Теперь самое интересное, персонаж может двигать ящик, если он стоит на том месте, куда персонаж хочет попасть. Главное что ни один объект не может покинуть пределы комнаты. Подвигайте ящик :)

//5. Добавьте точку в комнате, куда надо ящик передвинуть и двигайте :)

