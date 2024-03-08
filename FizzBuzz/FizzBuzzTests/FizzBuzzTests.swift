//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Alan Gardiner on 13/02/2024.
//

@testable import FizzBuzz
import XCTest

final class FizzBuzzTests: XCTestCase {
    // This would be our test case
    func testFizzOn3() {
        let result = FizzBuzz(3)
        XCTAssert(result == "1, 2, Fizz")
    }
    
    func testBuzzOn5(){
        let result = FizzBuzz(5)
        XCTAssert(result == "1, 2, Fizz, 4, Buzz")
    }
    
    func testFizzBuzzOn15(){
        let result = FizzBuzz(15)
        XCTAssert(result == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz")
    }
}
