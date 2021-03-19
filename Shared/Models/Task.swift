//
//  Task.swift
//  Reminders Deovn (iOS)
//
//  Created by Devon Hansen on 2021-03-18.
//

import Foundation

class Task: Identifiable, ObservableObject {
   
    var id = UUID()
    var goalName: String
    var description: String
    var priority: TaskPriority
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), goalName: String, description: String, priority: TaskPriority, completed: Bool) {
        self.id = id
        self.goalName = goalName
        self.description = description
        self.priority = priority
        self.completed = completed
    }
}

let testData = [
    Task(goalName: "Homework", description: "Do homwork", priority: .high, completed: true),
    Task(goalName: "First Aid", description: "Finish First Aid", priority: .medium, completed: false),
    Task(goalname: "WO", description: "Workout", priority: .low, completed: false),
]
