//: Playground - noun: a place where people can play

import UIKit


func doMath(value : Int..., fn: (half: Int) -> Int) -> (Int, Int) {
    var sum = 1
    for n in value {
        sum = n * sum
    }
    var divide : Int?
    
    if sum > 100_000_000 {
        divide = fn(half: sum)

        if let divideTwice = divide {
            divide = fn(half: divideTwice)
        }
        
    } else {
        divide = fn(half: sum * sum)
    }
    
    guard let quotient = divide else {
        return (0,0)
    }

    return (sum, quotient)
}



let tuple = doMath(5, 35, 46, 11, 23, 9, 33) { item in

    return item / 2
}

print(tuple)

