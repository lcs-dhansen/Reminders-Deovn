//
//  Task.swift
//  Reminders Deovn (iOS)
//
//  Created by Devon Hansen on 2021-03-18.
//

import Foundation

class Task: Identifiable, ObservableObject {
   
    var id = UUID()
    var description: String
    var priority: TaskPriority
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool) {
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
    }
}

let testData = [
    Task(description: "Do homwork", priority: .high, completed: true),
    Task(description: "Finish First Aid", priority: .medium, completed: false),
    Task(description: "Workout", priority: .low, completed: false),
]
