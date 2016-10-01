//: Playground - noun: a place where people can play

import UIKit

//LESSON №10
//1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.

func takeSmile() -> String {
    return "\u{2665}"
}

func takeCorn() -> String {
    return "\u{1F33D}"
}

func takeLemon() -> String {
    return "\u{1F34B}"
}

print("I'm in " + takeSmile() + " with " + takeLemon() + " and " + takeCorn())

//2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль

func takeColor(symbol: String, number: Int) -> String {
    
    var symbols     = ["a" : 1, "b" : 2, "c" : 3, "d" : 4, "e" : 5, "f" : 6, "g" : 7, "h" : 8]
    let tempValue   = symbols[symbol]
    
    if number < 0 || number > 8 {
        return "Impossible to define color. Nubmer must be from 1 to 8"
    } else if tempValue == nil {
        return "Impossible to define color. Symbol must be from 'a' to 'h'."
    }
    
    //return (tempValue! + number) % 2 == 0 ? "black" : "white"
    return (tempValue! + number) % 2 == 0 ? "◾️" : "◽️"
}

var alfabetStr = "abcdefgh"

for i in alfabetStr.characters {
    for j in 1...8 {
        takeColor(symbol: String(i), number: j)
    }
}



//3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.

func reverseArray(array : [Int]) -> [Int] {
    var tempArray = [Int]()
    
    for element in array {
        tempArray.insert(element, at: 0)
    }
    
    return tempArray
}

reverseArray(array: [4, 7, 9, 1])

func reverseSequence(intsequence sequence : Int...) -> [Int] {
    let tempArray = sequence
    
    return reverseArray(array: tempArray)
    
}

reverseSequence(intsequence: 4, 7, 9, 1)

//4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?

func changeArrayElements(array: inout [Int]) {
    
    if !array.isEmpty {
        let lastIndex = array.index(of: array.last!)
        array[lastIndex!] = 7
    }
    
}

var newArray = [4, 7, 9, 1]

changeArrayElements(array: &newArray)

newArray

//5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)

func clearString( Str: inout String) -> String {
    
    let nameNumbers = ["0" : "zero", "1" : "one", "2" : "two", "3" : "three", "4" : "four", "5" : "five", "6" : "six", "7" : "seven", "8" : "eight", "9" : "nine"]
    
    for symbol in Str.lowercased().characters {
        
        let newSymbol = String(symbol)
        
        switch newSymbol {
        case "a", "o", "e", "u":
            Str += newSymbol.uppercased()
        case ".", ",", "!", "?", ":" :
            Str += " "
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            Str += nameNumbers[newSymbol]!
        default:
            Str += newSymbol
        }
        
        Str.remove(at: Str.characters.index(of: symbol)!)
    }
    
    return Str
}

var newStr = "It's easy as, 1 2 3."

import Foundation

//(newStr as NSString).substringFromIndex(4)
//(newStr as NSString).substringToIndex(6)
//(newStr as NSString).substringWithRange(NSRange.init(location: 2, length: 5))
//(newStr as NSString).rangeOfString("as").toRange()

var newChar : Character = "a"

newStr.characters.index(of: newChar)!

//newStr.substringFromIndex(newStr.characters.indexOf(newChar)!)

clearString(Str: &newStr)

