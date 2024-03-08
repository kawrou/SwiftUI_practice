import UIKit


var myList = ["Cat", "Mouse", "Frog"]

var removedItem = myList.remove(at: 1)
myList.insert("Lynx", at: 0)
myList.insert(removedItem, at: 0)

print(myList)
// Should print:
// ["Mouse", "Lynx", "Cat", "Frog"]


let myAnimals = ["Cat", "cat", "frog", "cat", "dog", "Dog"]
var counters = [String: Int]()
// Do not worry about this syntax for now!
// All we have done is declared an empty dictionary
// with keys being strings and values being numbers

// Write some code to count the items in the array here
for animal in myAnimals{
    counters[animal.lowercased(), default: 0] += 1
}

// Why does this work???
// Answer: It doesn't work well. If there was only one animal, it wouldn't work.
//counters["cat"] = 0
//counters["dog"] = 0
//counters["frog"] = 0
// 
//for animal in myAnimals{
//    var lowerCasedAnimal = animal.lowercased()
//    print(animal)
//    if myAnimals.contains(lowerCasedAnimal){
//        counters[lowerCasedAnimal]! += 1
//    }
//}

print(counters)
// Should print (in any order)
// [ "cat": 3, "dog": 2, "frog": 1 ]


var myCountries = ["England", "Italy", "Japan", "China", "Canada"] // Put the names of some countries in here

// Program should print a dictionary with each of the letters of the alphabet
// and the number of countries which begin with that letter.
// E.g. [ "a": 2, "b": 0, ... ]

var alphabetCounter = [String: Int]()

// SOLUTIONS
// Using prefix() method
//for country in myCountries{
//    let firstLetter = country.prefix(1).lowercased()
//    alphabetCounter[firstLetter, default: 0] += 1
//}

// Turns string into an array and take the first char at index 0
//for country in myCountries{
//    let firstLetter = Array(country)[0].lowercased()
//    alphabetCounter[firstLetter, default: 0] += 1
//}

// Don't know about "Optionals"
for country in myCountries{
    let firstLetter = country.first?.lowercased()
    alphabetCounter[firstLetter!, default: 0] += 1
}


var fruits = ["apple", "Orange", "melon", "peach"]

if fruits.contains("orange"){
    print("yes")
}else{
    print("no")
}
