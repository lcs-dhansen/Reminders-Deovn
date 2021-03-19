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
   
    @State private var goalName = ""
    @State private var description = ""
    @State private var priority = TaskPriority.low
    @State private var goalValue = GoalValue.one
   
    
    //wether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Goal Name", text: $goalName)
                    
                    TextField("Description", text: $description)
                    
                    Picker("Priority", selection: $priority) {
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Picker("Point Value", selection: $goalValue) {
                        Text(GoalValue.one.rawValue).tag(GoalValue.one)
                        Text(GoalValue.two.rawValue).tag(GoalValue.two)
                        Text(GoalValue.three.rawValue).tag(GoalValue.three)
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
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Back") {
                        back()
                    }
                }
            }

        }
    }
    
    //function allows back button to work
    func back() {
        showing = false
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
