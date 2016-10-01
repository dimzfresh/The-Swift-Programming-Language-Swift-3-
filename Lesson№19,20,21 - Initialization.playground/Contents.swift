//: Playground - noun: a place where people can play

import UIKit

//Инициализаторы

class Granny {
    
    var firstName: String
    var lastName:  String
    var weight: Double?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName  = lastName
    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
    }
    
    convenience init() {
        self.init(firstName: "", lastName: "")
    }
 
    convenience init(weight: Double) {
        self.init(firstName: "", lastName: "")
        self.weight = weight
    }
    
    
}

class Mother: Granny {
    
    var favouriteSup: String = ""
    var childCount: Int
    
    init(childCount: Int) {
        self.childCount = childCount
        super.init(firstName: "", lastName: "")
        self.firstName = childCount > 0 ? ("Mother of " + String(childCount)) : ""
    }
    
    convenience init(favouriteSup: String) {
        self.init(childCount: 0)
        self.favouriteSup = favouriteSup
    }
}

let granny = Granny(weight: 64.0)

let mother = Mother(childCount: 2)
mother.firstName

let mother2 = Mother(favouriteSup: "Borch")
mother2.firstName
mother2.favouriteSup



