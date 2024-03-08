//
//  ContentView.swift
//  MyPet
//
//  Created by Alan Gardiner on 14/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var petName = ""
    @State private var petNames = [String]()
        
            var body: some View {
                NavigationView {
                    Form {
                        // We're adding the TextField and Button to their own Section, with a header
                        Section(header: Text("Add a new pet name")) {
                            HStack{
                                TextField("Enter your pet's name", text: $petName)
                                Button("Submit") {
                                    guard !petName.isEmpty else { return }
                                    petNames.append(petName)  // Add the new pet name to the list
                                    petName = ""  // Reset the text field
                                }
                            }
                        }
                        // The resulting list of names should have their own Section
                        Section(header: Text("Your pets")) {
                            // Cycle through the list of pet names that have been submitted
                            ForEach(petNames, id: \.self) { name in 
                                NavigationLink(destination: NameDisplayView(petName: name)) {
                                // This will be the part of our NavigationLink that the user will see: the name displayed in the list
                                Text(name)
                            }
                            }
                        }
                    }
                    .navigationBarTitle("Pet Names")
                }
                }
            }

#Preview {
    ContentView()
}
