//
//  TaskCategory.swift
//  TaskManagment
//
//  Created by Oleksii Irzhavskyi on 07.01.2023.
//

import SwiftUI

//Category with Color
enum Category: String,CaseIterable{
    case general = "General"
    case bug = "Bug"
    case idea = "Idea"
    case modifiers = "Modefiers"
    case challenge = "Challenge"
    case coding = "Coding"
    
    var color: String{
        switch self {
        case .general:
            return "Gray"
        case .bug:
            return "Green"
        case .idea:
            return "Pink"
        case .modifiers:
            return "Blue"
        case .challenge:
            return "Orange"
        case .coding:
            return "Brown"
        }
    }
}

@objc
public enum Categorys: Int16{
    case general
    case bug
    case idea
    case modifiers
    case challenge
    case coding
    
    var color: Color{
        switch self {
        case .general:
            return Color("Gray")
        case .bug:
            return Color("Green")
        case .idea:
            return Color("Pink")
        case .modifiers:
            return Color("Blue")
        case .challenge:
            return Color.purple
        case .coding:
            return Color.brown
        }
    }
}
