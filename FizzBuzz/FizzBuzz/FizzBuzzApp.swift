//
//  FizzBuzzApp.swift
//  FizzBuzz
//
//  Created by Alan Gardiner on 13/02/2024.
//

import SwiftUI

@main
struct FizzBuzzApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

func FizzBuzz(_ number: Int) -> String {
    var numArray : [String] = []
    for num in 1...number{
        if num % 3 == 0 && num%5==0{
            numArray.append("FizzBuzz")
        }else if num % 3 == 0 {
            numArray.append("Fizz")
        }else if num % 5 == 0 {
            print(num)
            numArray.append("Buzz")
        }
        else{
            numArray.append(String(num))
        }
    }
    let result = numArray.joined(separator: ", ")
    return result
}
