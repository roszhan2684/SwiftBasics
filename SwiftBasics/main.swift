////
////  main.swift
////  SwiftBasics
////
////  Created by ROSZHAN RAJ on 03/09/25.
////
//
//import Foundation
//
//print("Hello, World!")
//
//var i = 10
//var j : Int
//var k = 15
//print (i)
//i = k
//print (i)
//
//let (a, b) = (10, 20)
//print(a, b)
//
//let isSunny = true
//if isSunny {
//    print("Today is sunny")
//} else {
//    print("Today is cloudy")
//}
//
//let isRegisterdUser = true
//let hasvalidSubscription = true
//if isRegisterdUser && hasvalidSubscription {
//    print("You can access premium content")
//} else {
//    print("You need to register or subscribe")
//}
//
//let hasDiscountCoupon = true
//let isPremiumMember = false
//if hasDiscountCoupon || isPremiumMember {
//    print("You get a discount")
//} else {
//    print("You don't get a discount")
//}
//
//let ismember = true
//let hasCoupon = false
//let totalamount = 120
//if ismember && (hasCoupon || totalamount >= 100) {
//    print( "You get a discount yay!!!")
//} else {
//        print("You don't get a discount")
//    }
//    
////acessing element by index
//var countries = ["India", "USA", "China", "Japan", "Brazil"]
//
//let firstcountry = countries[0]
//let thirdcountry = countries[2]
//
//let lastcountry = countries[4]
//print(firstcountry, lastcountry, thirdcountry)
//
////adding elements
//countries.append("South Africa")
//countries.insert("Russia", at: 1)
//print(countries)
//
//countries.remove(at: 3)
//print(countries)
//countries.removeLast()
//print(countries)
//
//let noofcountries = countries.count
//
//print(noofcountries)
//
//// Basic Loop
//
//for i in 1...5{
//    print(i)
//}
//
//// while loop
//
//var count = 1
//while count <= 5 {
//    print("while loop: count is \(count)")
//    count += 1 // if u dont close the loop it will run infinitly
//}
//
//// defining a fucntion
//// greet is the fucntion name and name is the parameter and string is the parameter type
//func greet(name: String){
//    print( "Hello \(name)")
//}
//
//// calling a fucntion
//// roszhan is the aurgument value-string
//greet(name: "ROSZHAN")
//
////function parameters
////a and b are parameters
//func add(a: Int, b: Int) -> Int{
//    return a + b
//}
//let sum = add(a: 10, b: 20)
//print(sum)
//
////function without parameters
//func sayHello(){
//    print("Hello roszhan!!!")
//}
//sayHello()
//
////function with multiple parameters
//func calculate(a: Double, b: Double, operation: String) -> Double{
//    switch operation {
//    case "add":
//        return a + b
//    case "subtract":
//        return a - b
//    case "multiply":
//        return a * b
//    case "divide":
//        return a / b
//    default:
//        return 0.0
//    }
//    
//}
//let result = calculate(a: 10.9, b: 20.3, operation: "multiply")
//print(result)
//
////function with multiple return values
//// tuple
//
//func getfullname(firstname: String, lastname: String) -> (String, String){
//    return (firstname, lastname)
//}
//let fullname = getfullname(firstname: "ROSZHAN", lastname: "RAJ")
//print(fullname)
//
//
//
//
//
//import Foundation
//
//print("Hello, World!")
//
//// Optionals can hold nil values
//var greeting = "Hello, playground"
//var city: String?
//
//// 2 ways to unwrap optionals – forced unwrapping and optional binding
//
//// Force Unwrapping
//city = "Los Angeles"
//
//print(city!)
//
//// Optional bindings
//if let location = city {
//    print("The value is : \(location)")
//} else {
//    print("city is nil")
//}
//
//// Implicitly unwrap optionals when you know optional value is confirmed
//// to exist immediately after the optional is first defined
//var state: String! = "California"
//var actualState: String = state
//
//print(actualState)
//
//// Closures
//// Sorted Method
//
//let numbers = [8, 3, 2, 5, 6]
//// Define a fucntion to sort numbers in desending order
//
//func descending(_ num1: Int, _ num2: Int) -> Bool {
//    return num1 > num2
//}
//
//// Use the sorted (by) method to sort the nukbers using the desending function
//var sortedNumbers = numbers.sorted(by: descending)
//print(sortedNumbers)
//
////use a closure expression to sort the numbers using the desending
//var sortedNumbers2 = numbers.sorted(by: {(num1: Int, num2: Int) -> Bool in return num1 > num2})
//
//// Passing multiple clousers as a parameter to the function
//func performanceOperation(onSucess:() -> Void, onFailure: (Int) -> Void) {
//    let success = false
//    
//    if success {
//        onSucess()
//    } else {
//        let errorCode = 404
//        onFailure(errorCode)
//    }
//}
////Example usage
//performanceOperation(onSucess: {
//    print("Operation completed successfully")
//}, onFailure: { errorCode in
//    print("Operation failed with error code: \(errorCode)")
//})
//
//// -------------------------------------------------
//// Capturing constants and variables from surroundings
//// -------------------------------------------------
//func makeHomeworkCounter(subject: String) -> () -> Int {
//    var completedCount = 0
//    func completedHomework() -> Int {
//        completedCount += 1
//        return completedCount
//    }
//    return completedHomework
//}
//
//// Create homework counters for different subjects
//let mathHomeworkCounter = makeHomeworkCounter(subject: "Math")
//let historyHomeworkCounter = makeHomeworkCounter(subject: "History")
//
//// Complete homework for math and history
//let mathHomework1 = mathHomeworkCounter()   // 1
//let historyHomework1 = historyHomeworkCounter() // 1
//let mathHomework2 = mathHomeworkCounter()   // 2
//
//print("Homework Counts:")
//print(mathHomework1)   // 1
//print(mathHomework2)   // 2
//print(historyHomework1) // 1
//
//
//// -------------------------------------------------
//// Enumerations
//// -------------------------------------------------
//enum brand {
//    case Nike
//    case Pacsun
//    case Holistor
//    case Vans
//    case Puma
//}
//enum season {
//    case Spring, Summer, Winter, Fall
//}
//
//var favorite = brand .Nike
//favorite = .Pacsun
////once you assign a specific case to fav, data type of the fav becomes brand
//
//// next time you can assign another case diorectly
//
//
//// Example usage
//favorite = .Holistor
//
//switch favorite {
//case .Nike:
//    print("Nike")
//case .Pacsun:
//    print("Pacsun")
//case .Holistor:
//    print("Holistor")
//default:
//    print("diffrent brand")
//}
//
//

// Exception handling in Swift


struct DollarStore {
  var inventory: [String: Int]

  mutating func purchase(_ quantity: Int, _ item: String) -> Double {
    if let available = inventory[item] {
      if available >= quantity {
        inventory[item] = available - quantity
        return Double(quantity)
      } else {
        return 0.0
      }
    } else {
        return 0.0
    }
  }
}

var sixTen = DollarStore(inventory: [
  "milk" : 10,
  "egg" : 8,
  "tomato" : 7
])

print(sixTen.purchase(3, "egg"))   // Outputs: 3.0
print(sixTen.purchase(11, "milk")) // Outputs: 0.0
print(sixTen.purchase(5, "soda"))  // Outputs: 0.0


enum MyError: Error {
    case divisionByZero
    case negativeValue
}

func divide(_ dividend: Int, by divisor: Int) throws -> Int {
    guard divisor != 0 else {
        throw MyError.divisionByZero
    }

    guard dividend >= 0 && divisor >= 0 else {
        throw MyError.negativeValue
    }

    return dividend / divisor
}

func performDivision() {
    do {
        let result = try divide(10, by: 2)
        print("Result: \(result)")
    } catch MyError.divisionByZero {
        print("Error: Division by zero")
    } catch MyError.negativeValue {
        print("Error: Negative values are not allowed")
    } catch {
        print("An unexpected error occurred: \(error)")
    }
}

performDivision()

//Protocol
protocol Attackable {
    var damage: Int { get set }
    func attack(target: Attackable)
    func takeDamage(_ amount: Int)
}

struct Hero: Attackable {
    var damage: Int

    init(damage: Int) {
        self.damage = damage
    }

    func attack(target: Attackable) {
        print("Hero attacks for \(damage) damage")
        target.takeDamage(damage)
    }

    func takeDamage(_ amount: Int) {
        print("Hero takes \(amount) damage")
    }
}

struct Enemy: Attackable {
    var damage: Int

    init(damage: Int) {
        self.damage = damage
    }

    func attack(target: Attackable) {
        print("Enemy attacks for \(damage) damage")
        target.takeDamage(damage)
    }

    func takeDamage(_ amount: Int) {
        print("Enemy takes \(amount) damage")
    }
}

let hero = Hero(damage: 10)
let enemy = Enemy(damage: 5)

hero.attack(target: enemy)
enemy.attack(target: hero)

