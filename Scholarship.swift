//
//  Scholarship.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/28/22.
//

import Foundation

struct Scholarship: Identifiable {
    let id = UUID()
    let name: String
    let tasks: [Task]
}
