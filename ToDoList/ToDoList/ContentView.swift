//
//  ContentView.swift
//  ToDoList
//
//  Created by Alan Gardiner on 14/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var toggleOff = false
    @State var task:String = ""
    
    var body: some View {
        Section{
            VStack {
                Image("checklist")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                VStack{
                    Text("To Do!").font(.largeTitle)
                    Text("Toggle all of them off!").font(.callout)
                }
            }
            Section(header: Text("Add a new task")){
            Form{
                Toggle(isOn: $toggleOff) {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $task)
                }
            }
        }
            }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
