//
//  Results.swift
//  MLKit-codelab
//
//  Created by Pluto on 2/6/2022.
//  Copyright © 2022 Google Inc. All rights reserved.
//

import Foundation

struct Results {
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
}

extension Results {
    static var testData = [
        Results(title: "Submit reimbursement report", dueDate: Date().addingTimeInterval(800.0), notes: "Don't forget about taxi receipts"),
        Results(title: "Code review", dueDate: Date().addingTimeInterval(14000.0), notes: "Check tech specs in shared folder", isComplete: true),

    ]
}
