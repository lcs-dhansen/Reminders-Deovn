//
//  TaskCell.swift
//  Reminders Deovn (iOS)
//
//  Created by Devon Hansen on 2021-03-18.
//

import SwiftUI

struct TaskCell: View {
    
    @ObservedObject var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "cirlce")
                .onTapGesture {
                    task.completed.toggle()
                }
        
            Text(task.description)
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: testData[0])
        TaskCell(task: testData[1])
    }
}
