import UIKit

let add: (Int, Int) -> Int = { x, y in
    return x + y
}

add(5, 6)

func combineNumbers(usingFunction myFunction: (Int, Int) -> Int) -> Int {
    let x = 2
    let y = 3
    return myFunction(x, y)
}

combineNumbers(usingFunction: add)

//func returnAFunction(someNumber: Int) -> (() -> ()) {
//    // ...
//}

func createPrinter() -> () -> () {
    func printer() {
        print("Hello!")
    }
    
    return printer
}

let myPrinter = createPrinter()

myPrinter()

//func double(_ x: Int) -> Int {
//    return 2 * x
//}
//
//func triple(_ x: Int) -> Int {
//    return 3 * x
//}
//
//func quadruple(_ x: Int) -> Int {
//    return 4 * x
//}

//let radius = 5
//let diameter = double(radius)

func createMultiplier(x: Int) -> (Int) -> Int {
    func multiplier(y: Int) -> Int {
        return x * y
    }
    
    return multiplier
}

let double = createMultiplier(x: 2)
let triple = createMultiplier(x: 3)
let quadruple = createMultiplier(x: 4)

double(5)
triple(4)
quadruple(100)