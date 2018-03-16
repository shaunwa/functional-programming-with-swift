import UIKit

func countDown(from number: Int) {
    if number < 0 { return }
    print(number)
    countDown(from: number - 1)
}

// countDown(from: 10)

func countUp(from low: Int, to high: Int) {
    if low > high { return }
    print(low)
    countUp(from: low + 1, to: high)
}

// countUp(from: 0, to: 20)

func countUp(to number: Int) {
    countUp(from: 0, to: number)
}

countUp(to: 20)