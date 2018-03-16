import UIKit

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

//var sum = 0
//
//for number in numbers {
//    sum += number
//}

func double(_ x: Int) -> Int {
    return x * 2
}

func reduceSum(accumulator: Int, current: Int) -> Int {
    return accumulator + current
}

let sum = numbers.reduce(0, reduceSum)

func reduceProduct(accumulator: Int, current: Int) -> Int {
    return accumulator * current
}

let product = numbers.reduce(1, reduceProduct)

// let product = numbers.reduce(0, reduceProduct)
