import UIKit

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

//var squaredNumbers = [Int]()
//
//for number in numbers {
//    let newNumber = number * number
//    doubledNumbers.append(newNumber)
//}

func square(_ x: Int) -> Int {
    return x * x
}

let squaredNumbers = numbers.map(square)

func negative(_ x: Int) -> Int {
    return -x
}

let negatives = numbers.map(negative)

func triple(_ x: Int) -> Int {
    return 3 * x
}

let tripledNumbers = numbers.map(triple)

let names = ["Larry", "Patricia", "Johnathan", "Liz", "Bartholomew"]

func uppercase(_ string: String) -> String {
    return string.uppercased()
}

let uppercasedNames = names.map(uppercase)

func characterCount(_ string: String) -> Int {
    return string.characters.count
}

let nameCharacterCounts = names.map(characterCount)


