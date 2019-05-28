//: Playground - noun: a place where people can play

import UIKit


/// manipulating strings
var str = "Hello, playground"

extension String: CollectionType {

}

for s in str.characters {
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
    print ("Three multiplied by \(i) results in \(i * 3)", terminator: "" )
}

var twoToThePowerN = 2
var n = 8
for _ in 1..<n {
    twoToThePowerN *= 2
}
print(twoToThePowerN, terminator: "")

// arrays

var array = [String]()

array.append("1")
array += ["2", "3", "4", "5", "6", "7"]
array.insert("8", atIndex: 7)
array.removeAtIndex(array.count - 4)
array.removeAtIndex(array.count - 5)
array.removeLast()
array
array[2...3] = ["four", "five", "six"]
array.appendContentsOf(["8", "9"])
array

var twoDimensional : [[Int]] = [[1,2,3], [4,5,6]]
twoDimensional[0][2] // first array third space
twoDimensional[0].append(4)
twoDimensional

// non-mutability in Swift arrays /////////

var a = [1,2,3]
var b = a
b.append(4)
a

// compared to NSArray

let c = NSMutableArray(array: [1,2,3])
let d: NSArray = c

c.insertObject(4, atIndex: 3)
d




// sets much like an array but you cant store two of the same values!

var set : Set<String> = []

// below is our data source
let alpha = ["a","b","c","d","e","f","g","h","i","j","d","t","c","e","m","q","x","e","d","d", "z", "z", "z", "g", "o"]

for letter in alpha {
    set.insert(letter)
}

alpha.count
set.count // no duplicates!
set
// many of the standard operators are supported, inserting, removing, counting
set.insert("y")

// set returns an optional
// you can compare two sets

let set2 : Set<String> = ["a","b","c","d","e","e"] // ignores duplicate

set.isDisjointWith(set2)
set.isSubsetOf(set2)
set.isSupersetOf(set2)
set.isStrictSubsetOf(set2)
set.isStrictSupersetOf(set2)
set.exclusiveOr(set2) // returns everything but the matches
set.intersect(set2) // returns only the matches
set.subtract(set2) // subtracts set two from set one
set.union(set2) // gives us a set of all of the elements

// you can alsu use the InPlace versions to modify the variable on the left

// dictionaries are huge in swift

var products : [Int : String] = [0 : "apple tv"]
products[1] = "iPhone"
products[2] = "iPad"
products[3] = "macbook"

products.updateValue("iMac", forKey: 3) // returns optional!

// iterate over the dictionary via tuple
for (key, value) in products {
    print("\(key) : \(value)", terminator: "")
}

products.keys
products.values

products.removeValueForKey(2)
products




for scalar in "Just Another String".unicodeScalars {
    print("\(scalar.value) ")
}
print("")

var arr = ["hello", "world", "goodbye"] // ["hello", "world", "goodbye"]
var arrCopy = arr
let slice = arr[0..<2]                  // ["hello", "world"]
arr[0] = "bonjour"
arr                                     // ["bonjour", "world", "goodbye"]
arrCopy                                 // ["hello", "world", "goodbye"]
slice




let names = ["Dan", "Bill", "Jasmine", "Eva", "Dan", "Sandy", "Sandy", "Erica", "Pat", "Jerome"]

var setOfNames = Set<String>()

for name in names {
    setOfNames.insert(name)
    
}

names.count
setOfNames.count
setOfNames.isEmpty
setOfNames.first
setOfNames.remove("Bill")
setOfNames.count


let people = ["Sam", "Bill", "Jasmine", "Carina", "Dan", "Sandy", "Eric", "Erica", "Pat", "Jerome"]

setOfNames.exclusiveOr(people)
setOfNames.intersect(people)
setOfNames.subtract(people)
setOfNames.union(people)


var studentIds = [Int: String]()

studentIds[145] = "John"
studentIds[146] = "Jane"

for (key, val) in studentIds {
    print("key : \(key), val : \(val)")
}

studentIds.removeValueForKey(145)
