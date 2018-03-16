import UIKit

func someFunction() {
    print("Hello")
}

let someName: String = "Veronica"

let someNumber: Int = 8000

// let someFunction: /* ??? */

let characterCount: (String) -> Int

let calculateAverage: (Float, Float) -> Float

let writeEmailsToDB: ([String]) -> ()

let coordinates: (Float, Float)

let writeNumbersToDB: (Float, Float) -> ()

func charactersInString(string: String) -> Int {
    return string.characters.count
}

// characterCount = charactersInString

characterCount = { string in
    return string.characters.count
}

calculateAverage = { x, y in
    return (x + y) / 2
}

characterCount("hello")

calculateAverage(4, 7)

let ENVIRONMENT = "development"

// ....

let fetchDataFromNetwork: () -> [String]

func realNetworkOperation() -> [String] {
    // Some time-consuming operations here
}

if (ENVIRONMENT == "production") {
    fetchDataFromNetwork = realNetworkOperation
} else {
    fetchDataFromNetwork = {
        return [
            "John",
            "Nancy",
            "Dale",
            "Vanessa"
        ];
    }
}

let names = fetchDataFromNetwork()