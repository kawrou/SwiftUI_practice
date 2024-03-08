//
//  checkWalk.swift
//  10_minute_walk
//
//  Created by Alan Gardiner on 16/02/2024.
//

import Foundation

func ten_minute_walk( directions: [String]) -> Bool{
    //Define some variables to calculate position
    var x = 0
    var y = 0
//    var result: Bool
    //First check if walk will take 10 minutes
    //2nd: Loop over array
    //3rd: For each item in Array, check it's string value
    //4th: Calculate x/y position
    if directions.count != 10{
        return false
    }else{
        for item in directions{
            switch item{
            case "n": y += 1
            case "s": y += -1
            case "e": x += 1
            case "w": x -= 1
            default: print("Not valid direction")
            }
        }
        if x == 0 && y == 0{
            return true
        }else{
            return false
        }
    }
}
