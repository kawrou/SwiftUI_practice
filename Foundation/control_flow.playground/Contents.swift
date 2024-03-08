import UIKit


//Exercise 1
let randomInt = Int.random(in: 1..<6)

if randomInt == 1 {
    print("One")
} else if randomInt == 2 {
    print ("Two")
} else {
    print("More")
}


// Exercise 2
let roles = ["doctor", "nurse", "patient", "driver", "plumber"]
var role = roles.randomElement()

// Print "Please go to the second floor" if `role` is "doctor"
// Print "Please go to the first floor" if `role` is "nurse"
// Print "Please go to the waiting room" if `role` is "patient"
// Print "Please go to reception" if `role` is none of the above
switch role {
case "doctor":
    print("Please go to the second floor")
case "nurse":
    print("Please go to the first floor")
case "patient":
    print("Plesae go to the waiting room")
default:
    print("Please go to the reception")
}

//Challenge
let randomInt2 = Int.random(in: 1..<101)

// Print "Fizz" if `randomInt` is divisible by 3
// Print "Buzz" if `randomInt` is divisible by 5
// Print "FizzBuzz" if `randomInt` is divisible by 3 and 5
// Otherwise, print `randomInt`

if randomInt2 % 3 == 0 && randomInt2 % 5 == 0 {
    print("FizzBuzz")
} else if randomInt2 % 3 == 0 {
    print("Fizz")
} else if randomInt2 % 5 == 0 {
    print("Buzz")
} else {
    print(randomInt2)
}

