//
//  MyPetTests.swift
//  MyPetTests
//
//  Created by Alan Gardiner on 14/02/2024.
//

import XCTest
@testable import MyPet

final class MyPetTests: XCTestCase {

    // This would be our test case
    func testRegisteringFoodAddsToFoodOptions() {
        // Arrange
        let tastyFood = "salmon"
        let pet = Pet()
        
        // Act
        pet.registerFood(food: "salmon")
        let foodOptions = pet.getFoodOptions()
        print(foodOptions)
        XCTAssertTrue(foodOptions.contains(tastyFood))
//        XCTAssert()
        // XCTAssertFalse()
       
    }
}
