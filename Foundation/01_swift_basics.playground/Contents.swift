import UIKit

let greeting = "Hello, Swift World"
var introduction = "My name is Alan"
var greeting2 = "Hello playground! " + introduction

print(greeting)
print(introduction)
print(greeting2)

50 - 23
365 * 24 * 60
32452 / 13
32452 % 13

let thirtyone = 31
let thirty = 30
var sinceStart = thirtyone * 2 + thirty * 1 + 12 + 2
var daysOff = 19 + (thirtyone / 7) * 2 + (thirty / 7)
var totalDays = sinceStart - daysOff
var fridays = Double(7) / Double(totalDays) * 100

func formatNumber(_ number: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    return formatter.string(from: NSNumber(value: number)) ?? "\(number)"
}

let number = 1000000000
let formattedNumber = formatNumber(number)
print(formattedNumber)
