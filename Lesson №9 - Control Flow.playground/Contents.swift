//: Playground - noun: a place where people can play

import UIKit

//LESSON № 9
//Switch
//1.Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.

var tempStr = "Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов."

let numbersArray    = ["1", "2" ,"3" ,"4", "5", "6", "7", "8", "9", "0"]
let vowelsArray     = ["а", "у", "о", "ы", "и", "э", "я", "ю", "ё", "е"]
let consonantsArray = ["б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ"]

var vowelsCount     = 0
var consonantsCount = 0
var otherCount      = 0
var numbersCount    = 0

for str in tempStr.characters {
    switch str {
    case "а", "у", "о", "ы", "и", "э", "я", "ю", "ё", "е":
        vowelsCount += 1
    case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ":
        consonantsCount += 1
    case "а", "у", "о", "ы", "и", "э", "я", "ю", "ё", "е":
        numbersCount += 1
    default:
        otherCount += 1
    }
}

//2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа
var age = 14

switch age {
case 0..<7:
    print("Детский сад.")
case 7..<18:
    print("Школьник.")
case 18..<25:
    print("Студент.")
case 25...60:
    print("Трудяга.")
default:
    print("Пенсионер.")
}

//3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.

var nsl = (name : "Владислав", surname: "Вадимович", lastname: "Федосов")

switch nsl {
case (var name, _, _) where name.hasPrefix("А") || name.hasPrefix("О"):
    print(name)
case (_, var surname, _) where surname.hasPrefix("В") || surname.hasPrefix("Д"):
    print("\(nsl.name) \(surname)")
case (_, _, var lastname) where lastname.hasPrefix("Е") || lastname.hasPrefix("З"):
    print(lastname)
default:
    print("\(nsl.name) \(nsl.surname) \(nsl.lastname)")
    
}

//4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.

var ship1 = (1, 5)
var ship2 = (6...9, 8)
var ship3 = (5, 1..<4)
var shoot = (8, 1)

switch shoot {
case (6...9, 8):
    print("Зацепил.")
case (5, 1..<4):
    print("Зацепил.")
case (1, 5):
    print("Потопил.")
default:
    print("Промах.")
}

