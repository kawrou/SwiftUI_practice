//
//  NameDisplayView.swift
//  MyPet
//
//  Created by Alan Gardiner on 14/02/2024.
//

import SwiftUI

    struct NameDisplayView: View {
        var petName: String
        var foodOptions = [String]()
    
        mutating func registerFood(food: String){
            foodOptions.append("Beef")
        }
        
        func getFoodOptions() -> [String]{
            return foodOptions
        }
        
        var body: some View {
            Text("Your pet's name is \(petName)")
                .navigationTitle("Pet Name")
        }
    }

#Preview {
    NameDisplayView(petName: "Frodo")
}
