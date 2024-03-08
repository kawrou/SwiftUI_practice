//
//  _0_minute_walkTests.swift
//  10_minute_walkTests
//
//  Created by Alan Gardiner on 16/02/2024.
//

import XCTest
@testable import _0_minute_walk

final class _0_minute_walkTests: XCTestCase {

    func testWalkTakes10MinutesFails() {
        let result = ten_minute_walk(directions: ["w", "s"])
        XCTAssertFalse(result)
    }
    
    func testWalkTakes10MinutesPass(){
        let result = ten_minute_walk(directions: ["w","w","w","w","w","w","w","w","w","w"])
        XCTAssertFalse(result)
    }
    
    func testWalkBringsUsBackToStartTrue(){
        let result = ten_minute_walk(directions: ["w", "s", "e", "e", "n", "n", "e", "s", "w", "w"])
        XCTAssertTrue(result)
    }
    
    func testWalkBringsUsBackToStartFalse(){
        let result = ten_minute_walk(directions: ["w", "s", "e", "n", "n", "e", "s", "w", "w", "w"])
        XCTAssertFalse(result)
    }
    
    func testWalkBringsUsBackToStartFalse2(){
        let result = ten_minute_walk(directions: ["w", "s", "e", "s", "s", "e", "s", "w", "n", "n"])
        XCTAssertFalse(result)
    }
}
