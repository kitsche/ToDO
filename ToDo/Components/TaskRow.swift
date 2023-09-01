//
//  TaskRow.swift
//  ToDO
//
//  Created by John Suman on 2023/09/01.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: completed ?  "checkmark.circle" : "circle")
            Text(task)
        }
    }
}

#Preview {
    TaskRow(task: "Buy a milk", completed: true )
}
