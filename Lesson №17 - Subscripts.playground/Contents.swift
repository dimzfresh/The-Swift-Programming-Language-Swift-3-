//: Playground - noun: a place where people can play

import UIKit

struct Decks {
    var snowboard  = "K2"
    var skateboard = "baker"
    var wakeboard  = "ronix"
    
    subscript(char: String) -> String {
        
        get {
            switch(char) {
            case "K2" :
                return snowboard
            default:
                return "DWD"
            }
        }
        
        set {
            switch(char) {
            case "K2" :
                snowboard = newValue
            default:
                break
            }
        }

        
        
    }
    
}

var myStaff = Decks()
myStaff.skateboard

myStaff["K2"] = "DC"
myStaff.snowboard


