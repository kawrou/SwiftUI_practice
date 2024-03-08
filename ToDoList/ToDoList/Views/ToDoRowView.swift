//
//  ToDoRowView.swift
//  ToDoList
//
//  Created by Alan Gardiner on 14/02/2024.
//

import SwiftUI

struct ToDoRowView: View {
//    @Binding var toggleOff: Bool
    @State var taskItem: String
//    @State var toggleBtn: Bool
    @State var details: String
    
    var body: some View {
//        Toggle(isOn: $toggleBtn) {
//            TextField("Enter your text here", text: $task)
//        }
//        TextField("Enter your task here", text: $task)
        Form{
            Section(header: Text("Task")){
                TextField("Title", text: $taskItem)
            }
            Section(header: Text("Notes")){
                TextField("Enter your notes here", text: $details)
                    .navigationTitle("Details")
            }
        }
    }
}

#Preview {
//    ToDoRowView(toggleOff: .constant(false), task: .constant(""))
    ToDoRowView(taskItem: "", details: "")
}
