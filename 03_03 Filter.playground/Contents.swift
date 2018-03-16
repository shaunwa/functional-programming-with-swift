import UIKit

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

class Employee {
    let name: String
    let salary: Int
    let gender: String
    
    init(name: String, salary: Int, gender: String) {
        self.name = name
        self.salary = salary
        self.gender = gender
    }
}

let employees = [
    Employee(name: "John", salary: 65000, gender: "M"),
    Employee(name: "Liza", salary: 65000, gender: "F"),
    Employee(name: "Beatrice", salary: 80000, gender: "F"),
    Employee(name: "Emmerson", salary: 100000, gender: "M"),
    Employee(name: "Gladys", salary: 110000, gender: "F"),
    Employee(name: "Gregory", salary: 90000, gender: "M"),
]

let maleEmployees = employees.filter({ employee in
    return employee.gender == "M"
})

let maleSalaries = maleEmployees.map({ employee in
    return employee.salary
})

let maleSalariesSum = maleSalaries.reduce(0, { accumulator, current in
    return accumulator + current
})

let averageMaleSalary = maleSalariesSum / maleSalaries.count


let femaleEmployees = employees.filter({ employee in
    return employee.gender == "F"
})

let femaleSalaries = femaleEmployees.map({ employee in
    return employee.salary
})

let femaleSalariesSum = femaleSalaries.reduce(0, { accumulator, current in
    return accumulator + current
})

let averageFemaleSalary = femaleSalariesSum / femaleSalaries.count