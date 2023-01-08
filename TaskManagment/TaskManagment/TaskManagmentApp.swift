//
//  TaskManagmentApp.swift
//  TaskManagment
//
//  Created by Oleksii Irzhavskyi on 06.01.2023.
//

import SwiftUI
import CoreData

@main
struct TaskManagmentApp: App {
//    @Environment(\.scenePhase) var scenePhase

    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
//        .onChange(of: ScenePhase) { _ in
//            persistenceController.save()
//        }
    }
}
