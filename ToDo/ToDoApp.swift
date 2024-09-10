//
//  ToDoApp.swift
//  ToDo
//
//  Created by Александр Калашников on 10.09.2024.
//

import SwiftUI

@main
struct ToDoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
