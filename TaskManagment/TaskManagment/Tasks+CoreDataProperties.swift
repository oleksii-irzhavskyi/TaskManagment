//
//  Tasks+CoreDataProperties.swift
//  TaskManagment
//
//  Created by Oleksii Irzhavskyi on 08.01.2023.
//
//

import Foundation
import CoreData


extension Tasks {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tasks> {
        return NSFetchRequest<Tasks>(entityName: "Tasks")
    }

    @NSManaged public var id: UUID
    @NSManaged public var dateAdded: Date
    @NSManaged public var taskName: String
    @NSManaged public var taskDescription: String
    @NSManaged public var taskCategory: String

}

extension Tasks : Identifiable {

}

//extension Tasks {
//    @NSManaged public var taskCategory: String {
//        var taskColor: Category {
//            set{
//                taskCategory = newValue.rawValue
//            }
//            get{
//                Category(rawValue: taskCategory) ?? .general
//            }
//        }
//    }
//}
