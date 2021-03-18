//
//  Reminders_DeovnApp.swift
//  Shared
//
//  Created by Devon Hansen on 2021-03-18.
//

import SwiftUI

@main
struct Reminders_DeovnApp: App {
    
    private var store = TaskStore(tasks: testData)
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
