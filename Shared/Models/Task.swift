//
//  Task.swift
//  Reminders Deovn (iOS)
//
//  Created by Devon Hansen on 2021-03-18.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    var completed: Bool
}

let testData = [
    Task(description: "Do homwork", priority: .high, completed: true),
    Task(description: "Finish First Aid", priority: .medium, completed: false),
    Task(description: "Workout", priority: .low, completed: false),
]
