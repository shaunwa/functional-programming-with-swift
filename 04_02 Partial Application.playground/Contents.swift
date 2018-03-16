import UIKit

func add(_ x: Int, _ y: Int, _ z: Int) -> Int {
    return x + y + z
}

//func addX(_ x: Int) -> (Int, Int) -> Int {
//    func addYAndZ(_ y: Int, _ z: Int) -> Int {
//        return add(x, y, z)
//    }
//    
//    return addYAndZ
//}
//
//let add5 = addX(5)
//
//add5(6, 7)

func addXAndY(_ x: Int, _ y: Int) -> (Int) -> Int {
    func addZ(_ z: Int) -> Int {
        return add(x, y, z)
    }
    
    return addZ
}

let add5And6 = addXAndY(5, 6)

add5And6(7)

func addX(_ x: Int) -> (Int) -> (Int) -> Int {
    func addY(_ y: Int) -> (Int) -> Int {
        func addZ(_ z: Int) -> Int {
            return add(x, y, z)
        }
        
        return addZ
    }
    
    return addY
}

let add8 = addX(8)
let add8And9 = add8(9)
add8And9(10)

addX(8)(9)(10)

