//
//  AddTaskView.swift
//  ToDoList
//
//  Created by Alan Gardiner on 15/02/2024.
//

import SwiftUI

struct AddTaskView: View {
    @Binding var taskTitle: String
    @Binding var taskList: [String]
    
    var body: some View {
        Section{
            HStack{
                TextField("Enter your task here", text: $taskTitle)
                Button("Add"){
                    guard !taskTitle.isEmpty else{
                        return
                    }
                    taskList.append(taskTitle)
                    taskTitle=""
                }.buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    AddTaskView(taskTitle: .constant(""), taskList: .constant([]))
}
