//: Playground - noun: a place where people can play

import UIKit

// draft

let numbers = [0,1,2,3,4,5,6]
let words = [0 : "bird", 1 : "cat", 2 : "dog", 3 : "lion"]


for number in numbers {
    print(number)
}

for (number, word) in words where number % 2 == 0{
    print("\(number) in \(word)")
}

for i in 0 ..< numbers.count {
    print(numbers[i])
    count++
}

for i in numbers where i > 4 {
    print(i)
}

var count = 0

repeat {
    print("hello")
    count++
} while count < 10




let someItem: Character = "r"


switch someItem {
case "a":
    print("vowel")
case "z":
    fallthrough
default:
    print("consonant")
}



switch someItem {
case "a", "e", "i", "o", "u":
    print("vowel")

default:
    print("consonant")
}

let someWord = "bent"

switch someWord {
case "any"..."apple":
    print("1")
case "baby"..."buffalo":
    print("2")
case "caiman"..."cousin":
    print("3")
default:
    print("fell through")

}


let lat = 43.068386, lon = -89.396439

switch (lat, lon) {
case let (lat, lon) where lon > -10.00 && lon < -50.00:
    print("european union")
case let (lat, lon) where lon < -63.00 && lon > -168.00:
    print("north & south america")
    
default:
    break
    
}

// show switches with enums

enum Status {
    case Okay(status: Int)
    case Error(code: Int, message: String)
    case NA
}


let myStatus = Status.Okay(status: 0)

switch myStatus {
case .NA:
    print("na")
case .Okay(0):
    print("ok")
case .Error(0, _):
    print("error 1")
case .Error(1..<100, _):
    print("error 2")
case .Error(let code, let msg):
    print("error 3 \(code): \(msg)")
default:
    print("derp")
}


enum PostalCode {
    case UK(String)
    case US(Int, Int)
}

// figure out an if-case example

//let buckingham = PostalCode.UK("SW1 1AA")
//
//if case PostalCode.UK("SW1 1AA") == buckingham {
//    print("\(val))")
//}


extension Double {
    var cup: Double { return self }
    var quart: Double { return self / 4 }
    var gallon: Double { return self / 16 }
}

var cup = 1.cup
var quart = 1.quart
var gallon = 1.gallon




var numbers2 = [23, 54, 51, 98, 54, 23, 32]

for number in numbers2 where number % 2 == 0 {
    

}










