//
//  TasksView.swift
//  ToDO
//
//  Created by John Suman on 2023/09/01.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
        VStack {
            Text("Tasks")
                .font(.title3)
                .bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.yellow/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TasksView()
}
