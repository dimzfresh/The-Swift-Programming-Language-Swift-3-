//: Playground - noun: a place where people can play

import UIKit

//1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур

//Pawn   [pɔːn]   - пешка
//Bishop [ˈbɪʃəp] - слон
//Rook   [rʊk]    - ладья
//Knight [naɪt]   - конь
//king   [kɪŋ]    - король
//queen  [kwiːn]  - ферзь

//MARK: Create enum
enum chessFigure {
    case Pawn  (name: chessName, color: chessColor, x: String, y: Int)
    case Bishop(name: chessName, color: chessColor, x: String, y: Int)
    case Rook  (name: chessName, color: chessColor, x: String, y: Int)
    case Knight(name: chessName, color: chessColor, x: String, y: Int)
    case King  (name: chessName, color: chessColor, x: String, y: Int)
    case Queen (name: chessName, color: chessColor, x: String, y: Int)
    
    enum chessName : String {
        case Pawn   = "Pawn"
        case Bishop = "Bishop"
        case Rook   = "Rook"
        case Knight = "Knight"
        case King   = "King"
        case Queen  = "Queen"
    }
    
    enum chessColor : String {
        case White = "White"
        case Black = "Black"
    }
}

var blackPawn1 = chessFigure.Pawn(name: .Pawn, color: .Black, x: "a", y: 2)
var blackPawn2 = chessFigure.Pawn(name: .Pawn, color: .Black, x: "h", y: 7)
var blackKing  = chessFigure.King(name: .King, color: .Black, x: "h", y: 8)
var whitePawn  = chessFigure.Pawn(name: .Pawn, color: .Black, x: "g", y: 2)
var whiteKing  = chessFigure.King(name: .King, color: .Black, x: "f", y: 7)

var chessArray = [blackPawn1, blackPawn2, blackKing, whitePawn, whiteKing]

//2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.

func printAray(figure : Array<chessFigure>) {
    for i in figure {
        switch i {
        case .Pawn(let n, let c, let x, let y) :
            print("figure: \(n.rawValue) color: \(c.rawValue) coordinate: (\(x): \(y))")
        case .King(let n, let c, let x, let y) :
            print("figure: \(n.rawValue) color: \(c.rawValue) coordinate: (\(x): \(y))")
        case .Queen(let n, let c, let x, let y) :
            print("figure: \(n.rawValue) color: \(c.rawValue) coordinate: (\(x): \(y))")
        case .Rook(let n, let c, let x, let y) :
            print("figure: \(n.rawValue) color: \(c.rawValue) coordinate: (\(x): \(y))")
        case .Knight(let n, let c, let x, let y) :
            print("figure: \(n.rawValue) color: \(c.rawValue) coordinate: (\(x): \(y))")
        case .Bishop(let n, let c, let x, let y) :
            print("figure: \(n.rawValue) color: \(c.rawValue) coordinate: (\(x): \(y))")
        }
    }
}

//3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)

func printChessBoard(chess: [chessFigure]) {
    
    let symbols = [1 : "a", 2 : "b", 3 : "c", 4 : "d", 5 : "e", 6 : "f", 7 : "g", 8 : "h"]
    
    for symbol in symbols {
        for number in 1...8 {
            
            var isDefault = true
            let isWhite   = (number + symbol.0)%2 == 0
            
            for i in chess {
                
                switch i {
                case .Pawn(_, _, let x, let y)   where (x == symbol.1) && (y == number):
                    isDefault = false
                    print(isWhite ? "♙" : "♟")
                case .King(_, _, let x, let y)   where (x == symbol.1) && (y == number):
                    isDefault = false
                    print(isWhite ? "♔" : "♚")
                case .Queen(_, _, let x, let y)  where (x == symbol.1) && (y == number):
                    isDefault = false
                    print(isWhite ? "♕" : "♛")
                case .Rook(_, _, let x, let y)   where (x == symbol.1) && (y == number):
                    isDefault = false
                    print(isWhite ? "♖" : "♜")
                case .Knight(_, _, let x, let y) where (x == symbol.1) && (y == number):
                    isDefault = false
                    print(isWhite ? "♘" : "♞")
                case .Bishop(_, _, let x, let y) where (x == symbol.1) && (y == number):
                    isDefault = false
                    print(isWhite ? "♗" : "♝")
                default:
                    break
                }
            }
            if isDefault {
                print(isWhite ? "◽️" : "◾️")
            }
            
        }
    }
}

printChessBoard(chess: chessArray)

//4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.

func changePosition(figure: chessFigure, newposition: (x: String, y: Int)) {
    if !isCorrectStep(point: newposition) {
        print("New position is not valid.")
        return
    }
    
    switch figure {
    case .Pawn(_, _, var x, var y) :
        x = newposition.x
        y = newposition.y
//    case .King(_, _, let x, let y)   where (x == symbol.1) && (y == number):
//        isDefault = false
//        print(isWhite ? "♔" : "♚")
//    case .Queen(_, _, let x, let y)  where (x == symbol.1) && (y == number):
//        isDefault = false
//        print(isWhite ? "♕" : "♛")
//    case .Rook(_, _, let x, let y)   where (x == symbol.1) && (y == number):
//        isDefault = false
//        print(isWhite ? "♖" : "♜")
//    case .Knight(_, _, let x, let y) where (x == symbol.1) && (y == number):
//        isDefault = false
//        print(isWhite ? "♘" : "♞")
//    case .Bishop(_, _, let x, let y) where (x == symbol.1) && (y == number):
//        isDefault = false
//        print(isWhite ? "♗" : "♝")
    default:
        break
    }

    
}

func isCorrectStep(point: (x: String, y: Int)) -> Bool {
    let str = "abcdefgh"
    switch point {
    case (let s, 1...8) where str.characters.contains(Character(s)):
        return true
    default:
        return false
    }
}

changePosition(figure: whitePawn, newposition: ("a", 4))

// whitePawn  = chessFigure.Pawn(name: .Pawn, color: .Black, x: "g", y: 2)




