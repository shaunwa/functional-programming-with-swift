import UIKit

// HIGHER-ORDER FUNCTIONS ----------------------------------

func combineNumbers(usingFunction myFunction: (Int, Int) -> Int) -> Int {
    let x = 2
    let y = 3
    return myFunction(x, y)
}

func createMultiplier(x: Int) -> (Int) -> Int {
    func multiplier(y: Int) -> Int {
        return x * y
    }
    
    return multiplier
}

// ----------------------------------

func createSafeVersion(checker: @escaping (Float, Float) -> Bool,
                       function: @escaping (Float, Float) -> Float,
                       defaultValue: Float) -> (Float, Float) -> Float {
    
    func wrapper(x: Float, y: Float) -> Float {
        if (checker(x, y)) {
            return function(x, y)
        } else {
            print("Warning! Dividing by zero")
            return defaultValue
        }
    }
    
    return wrapper
}

func divide(x: Float, y: Float) -> Float {
    return x / y
}

func yIsnt0(x: Float, y: Float) -> Bool {
    return y != 0
}

let divideSafely = createSafeVersion(checker: yIsnt0, function: divide, defaultValue: 0)

divideSafely(4, 0)