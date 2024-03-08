//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Alan Gardiner on 14/02/2024.
//

// User can input a todo into an empty textField at the top
// Users todo are shown below the empty textField
// User can toggle the todo to visually set if the todo is done
// User can tap an icon to navigate to a detailed view

// Input at top of app with button -> User input -> Adds input to a list -> Appears in list below with toggle

import SwiftUI

struct Todo: Identifiable{
    let id = UUID()
    var task = String()
    var isCompleted = Bool()
}

struct ToDoListView: View {
    @State var taskTitle: String = ""
    @State var taskList = [String]()
    @State var toggleBtn: Bool = false
    
    var body: some View {
        NavigationView{
            VStack {
                Image("checklist")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                VStack{
                    Text("To Do!").font(.largeTitle)
                    Text("Toggle all of them off!").font(.callout)
                }
                Form {
                    ForEach(taskList, id: \.self) { taskItem in
                        NavigationLink(destination: ToDoRowView(taskItem: taskItem, details: ""))
                        {
                            HStack{
                                Toggle("", isOn: $toggleBtn).labelsHidden()
                                Text(taskItem)
                                Spacer()
                            }
                        }
                    }
                // taskTitle(in child) : $taskTitle from State
                    AddTaskView(taskTitle: $taskTitle, taskList: $taskList)
                }.listStyle(PlainListStyle())
            }
        }
    }
}

    #Preview {
        ToDoListView()
}


