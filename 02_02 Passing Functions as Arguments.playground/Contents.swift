import UIKit

func printUppercased(string: String) {
    print(string.uppercased())
}

printUppercased(string: "hello")

//func add(x: Int, y: Int) -> Int {
//    return x + y
//}

// func someFunction(anotherFunction: () -> ()) { /* ... */ }

// func someFunction(anotherFunction: (String) -> Int) { /* ... */ }

func someFunction(anotherFunction: (Int, Int) -> ()) { /* ... */ }

func add(x: Int, y: Int) -> Int {
    return x + y
}

func subtract(x: Int, y: Int) -> Int {
    return x - y
}

func combineNumbers(usingFunction myFunction: (Int, Int) -> Int) -> Int {
    let x = 2
    let y = 3
    return myFunction(x, y)
}

combineNumbers(usingFunction: add)
combineNumbers(usingFunction: subtract)
combineNumbers(usingFunction: max)
combineNumbers(usingFunction: min)

combineNumbers(usingFunction: { x, y in
    return x + 2 * y
})

func ifElse(
    condition: Bool,
    trueFunction: () -> (),
    falseFunction: () -> ()
    ) {
    if (condition) {
        trueFunction()
    } else {
        falseFunction()
    }
}

ifElse(condition: false,
       trueFunction: { print("Calling the first function")},
       falseFunction: { print("Calling the second function")})