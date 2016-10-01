//: Playground - noun: a place where people can play

import UIKit

//LESSON №11
//1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте print в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.

func check(noNameFunc: @escaping () -> ()) {
    for i in 1...10 {
        print(i)
    }
    noNameFunc
}

check() { }

//2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.

let tempArray = [99, -5, 99, 5, 5, 3, 88, 75, 9, 5]
let sortArray = tempArray.sorted { (i1: Int, i2: Int) -> Bool in i1>i2 }
sortArray

//3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
//  используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.

func calculateResult(numbers: [Int], closure: (_ first: Int?, _ second: Int) -> Bool ) -> Int {
    var param: Int?
    
    for number in numbers {
        if closure(param, number) {
            param = number
        }
    }
    
    return param ?? 0
}

//calculateResult(tempArray) {$0 == nil || $0 > &1}
let equalNumber = calculateResult(numbers: tempArray) { (first, second) in
    first == nil || first! == second
}

let minNumber = calculateResult(numbers: tempArray) { (first, second)   in
    first == nil || first! > second
}

let maxNumber = calculateResult(numbers: tempArray) { (first, second)   in
    first == nil || first! < second
}

//4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
func creatStringArray(str: String) -> [String] {
    var symbolArray = [String]()
    
    for i in someStr.characters {
        symbolArray.append(String(i))
    }
    
    return symbolArray
}
var someStr     = "Учиться и переучиваться приходится всем без исключения в 2016 году."
//Если вы займётесь Swift в 2015-м, то спустя сколько угодно лет будете отставать от самых опытных программистов в худшем случае на год.
//Преимущество опытных кодеров только в том, что Swift заимствует лучшие элементы других языков — тем, кто их знает, легче его освоить."

var symbolArray = creatStringArray(str: someStr)

func getPriority(str: String) -> Int {
    
    var priorit = 5
    
    switch str.lowercased() {
    case "а", "о", "у", "ы", "и", "э", "е", "я":
        priorit = 1
    case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ" :
        priorit = 2
    case "0" ... "9" :
        priorit = 3
    default:
        priorit = 4
    }
    
    return priorit
}

let sortedArray = symbolArray.sorted { (str1 : String, str2 : String) -> Bool in
    if getPriority(str: str1) < getPriority(str: str2) {
        return true
    } else if getPriority(str: str1) == getPriority(str: str2) {
        return str1.lowercased() < str2.lowercased()
    } else {
        return false
    }
}

//var sortedArray = symbolArray.sort( > )

sortedArray

//5. Проделайте задание №3, но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)

var Str            = "Люблю печеньки"
//var scalarsArray =  Array(someStr.unicodeScalars).map { Int($0.value) }
var scalarsArray   =  Array(Str.unicodeScalars).map { (i) -> Int in i.value
    return Int(i.value)
}

scalarsArray

let minScalar = calculateResult(numbers: scalarsArray) { (first, second)  in
    first == nil || first! > second
}

let maxScalar = calculateResult(numbers: scalarsArray) { (first, second)   in
    first == nil || first! < second
}



