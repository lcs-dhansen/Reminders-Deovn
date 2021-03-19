//
//  AddTask.swift
//  Reminders Deovn
//
//  Created by Devon Hansen on 2021-03-19.
//

import SwiftUI

struct AddTask: View {
    
    //Get a reference to the store of tasks (taskStore)
    @ObservedObject var store: TaskStore
    
    @State private var description = ""
    @State private var priority = TaskPriority.low
    
    
    //wether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Description", text: $description)
                    
                    Picker("Priority", selection: $priority) {
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationTitle("New Reminder")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveTask()
                    }
                }
            }
        }
    }
    
    func saveTask() {
        
        //add the task to the list of tasks
        store.tasks.append(Task(description: description,
                               priority: priority,
                               completed: false))
        
        //dismiss this view
        showing = false
        
    }
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask(store: testStore, showing: .constant(true))
    }
}
