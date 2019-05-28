//: Playground - noun: a place where people can play

import UIKit


// I plan on providing more examples in the final draft, with add'l comments


/// manipulating strings
var str = "Hello, playground"

extension String: CollectionType {
    // nothing needed here – it already has 
    // the necessary implementations
    // (dont do this IRL)
}

for s in str {
    print(s)
}



str[str.startIndex]
str[str.startIndex.successor()]
str[str.endIndex.predecessor()]
str[str.startIndex.advancedBy(3)]
str[str.endIndex.advancedBy(-3)]

str.insert("_", atIndex: str.startIndex.advancedBy(4))

let range = str.endIndex.advancedBy(-6) ..< str.endIndex
str.removeRange(range)

for (i, c) in str.characters.enumerate() {
    print("\(i) : \(c)")
}

// change variable names
var greeting = "Hello!"
if let idx = greeting.characters.indexOf("!") {
    greeting.insertContentsOf(", world".characters, at: idx)
}

var ns : NSString = "derp"
var sw : String = ns as String

var swiftString : String = "herp"
var nsString : NSString = swiftString


for i in 1...5
{
    print ("Three multiplied by \(i) results in \(i * 3)" )
}

var twoToThePowerN = 2
var n = 8
for _ in 1..<n {
    twoToThePowerN *= 2
}
print(twoToThePowerN)



let animals = [["cat", "dog", "bird"], ["monkey"], ["fish", "bear"]]
var flattenAnimals = animals.flatMap {
    (let animal) -> [String] in
    return animal
}

print(flattenAnimals)


let numbers : [Int?] = [0, 1, 2, 3, 4, 5, nil, nil, 6]

var flattenNumbers = numbers.flatMap {
    (number) -> Int? in
    return number
}


print("returns: \(flattenNumbers)")

// performing the same operation using map returns optionals & nils
let numbers2 : [Int?] = [0, 1, 2, 3, 4, 5, nil, nil, 6]

var flattenNumbers2 = numbers2.map {
    (number) -> Int? in
    return number
}

print(flattenNumbers2)

let people = [["id": 1, "age": 34], ["id": 2, "age": 20], ["id": 3, "age": 36]]
let ageOneYear = people.flatMap { $0["age"] }.map { $0 + 1 }
print(ageOneYear)

