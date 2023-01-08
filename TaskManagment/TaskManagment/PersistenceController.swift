//
//  PersistenceController.swift
//  TaskManagment
//
//  Created by Oleksii Irzhavskyi on 08.01.2023.
//

import SwiftUI
import CoreData

struct PersistenceController {
    // A singleton for our entire app to use
    static let shared = PersistenceController()

    // Storage for Core Data
    let container: NSPersistentContainer

    // A test configuration for SwiftUI previews
//    static var preview: PersistenceController = {
//        let controller = PersistenceController(inMemory: true)
//
//        // Create 10 example programming languages.
//        for _ in 0..<10 {
//            let language = ProgrammingLanguage(context: controller.container.viewContext)
//            language.name = "Example Language 1"
//            language.creator = "A. Programmer"
//        }
//
//        return controller
//    }()
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        for _ in 0..<10 {
            let task = Tasks(context: viewContext)
            task.taskName = "Example 1"
            task.taskDescription = "Description example"
            task.dateAdded = Date(timeIntervalSince1970: 1672829809)
        }
        do{
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        
        return result
    }()

    // An initializer to load Core Data, optionally able
    // to use an in-memory store.
    init(inMemory: Bool = false) {
        // If you didn't name your model Main you'll need
        // to change this name below.
        container = NSPersistentContainer(name: "Tasks")

        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }
    
    func save() {
        let context = container.viewContext

        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Show some error here
            }
        }
    }
}

