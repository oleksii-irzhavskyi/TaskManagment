//
//  Task.swift
//  TaskManagment
//
//  Created by Oleksii Irzhavskyi on 07.01.2023.
//

import SwiftUI

// Task Model
struct Task: Identifiable{
    var id: UUID = .init()
    var dateAdded: Date
    var taskName: String
    var taskDescription: String
    var taskCategory: Category
}

//Sample
var sampleTasks: [Task] = [
    .init(dateAdded: Date(timeIntervalSince1970: 1672829809), taskName: "Kushat kaki", taskDescription: "kushat kaki i pisat kukariku", taskCategory: .general),
    .init(dateAdded: Date(timeIntervalSince1970: 1672833409), taskName: "Kupil pasochku", taskDescription: "Kupil i kushayu pasochku", taskCategory: .challenge)
]
