//: Playground - noun: a place where people can play

import UIKit

// draft

// classes and structs are similar

class Persona {
    var fullName : String
    var yearsOld : Int
    var daysOld : Int = 0
    
    init(name: String, age: Int) {
        fullName = name
        yearsOld = age
    }
    
    deinit {/**/} // we'll discuss this in a later module
    
    func calcApproxDaysAlive() {
        self.daysOld = 365 * self.yearsOld
    }
}

struct Human {
    var fullName : String
    var yearsOld : Int
    var daysOld : Int = 0
    
    init(name: String, age: Int) {
        fullName = name
        yearsOld = age
    }
    
    //deinit {/**/} // structs are value types !
    
    mutating func calcApproxDaysAlive() {
        self.daysOld = 365 * self.yearsOld
    }
}


// good example for understanding reference counting
var firstName = "john" // firstName = "john"
var lastName = firstName // lastName = "john"
lastName = "doe" // lastName = "doe"

func rename(var firstName: String) -> String {
    firstName = "Marion" // this is a copy! not a reference!
  return firstName
}

var newGirl : String = rename(firstName) // although a was mutated within the function
print(newGirl)
firstName // a's original value remains
lastName


// this is how stucts work!

struct Person {
    var firstName = "steve"
    var lastName = "jobs"
}

var aPerson = Person()
var anotherPerson = aPerson
anotherPerson.firstName = "jane" // this is a copy!

func renamePerson(var aPerson: Person) -> Person { // yet another copy!
    aPerson.firstName = "Pat"
    return aPerson
}

var p = renamePerson(aPerson)
p
anotherPerson.firstName

class Person2 {
    var firstName = "steve"
    var lastName = "jobs"
    

}

var person1 = Person2()
var person2 = person1
person2.firstName = "jane" // this is a copy!
person1.firstName

func renamePerson2(person1: Person2) -> Person2 { // yet another copy!
    person1.firstName = "Pat"
    return person1
}

renamePerson2(person1)

person2.firstName





// tuples are first class objects


let http404Error = (404, "Not Found")

let (status, desc) = http404Error
print("\(status): \(desc)")

enum CompassPoint {
    case North
    case South
    case East
    case West
}

var compass : CompassPoint = .South
compass.hashValue // gets implicit value

enum Planet: Int {
    case Mercury = 1,
    Venus, Earth, Mars, Jupiter,
    Saturn, Uranus, Neptune
}

Planet.Earth.rawValue

enum Barcode {
    case UPCA(sys: Int, data: Int, check: Int)
    case QRCode(data: String)
}


let myNormalBarcode = Barcode.UPCA(sys: 0, data: 2791701919, check: 3)
let myQRCode = Barcode.QRCode(data: "http://example.com")

switch myQRCode {

case .UPCA (let s, let d, let c):
    print("upca")
case .QRCode (let str):
    print("qrcode")

}


let jupiter = Planet(rawValue: 5)

enum PostalCode {
    case US(Int, Int)
    case UK(String)
    case CA(code: String)
}

var somewhere = PostalCode.US(94707,2625)


enum Dimension {
    case DISTANCE(Int)
    init(height: Int) {self = DISTANCE(height + 100)}
    func value() -> Int {
        switch self {
            case .DISTANCE(let value) : return value
        }
    }
}

let aDistance = Dimension.DISTANCE(10)
let bDistance = Dimension(height: 10)
aDistance.value()
bDistance.value()


// state machine

enum EmployeeState {
    case clockedIn, lunchOut, lunchIn, clockedOut
    
    mutating func next() {
        switch self {
        case clockedIn:  self = lunchOut
        case lunchOut: self = lunchIn
        case lunchIn:    self = clockedOut
        case clockedOut:    self = clockedIn
        }
    }
}

var state = EmployeeState.clockedOut
state.next()
state.next()
state.next()


enum Either<T1, T2> {
    case First(T1)
    case Second(T2)
}


var choice : Either<Int, String> = .First(3)

switch choice {
case .First(let value):
    print("the value is: \(value)")
case .Second(let error):
    print("error: \(error)")
}


func multiply(x: Int, y: Int) -> Int {
    return x * y
}

let mult = multiply

let n = mult(3,y: 4)







