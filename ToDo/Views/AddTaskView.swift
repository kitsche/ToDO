//
//  AddTaskView.swift
//  ToDO
//
//  Created by John Suman on 2023/09/01.
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Add a new task")
                .font(.title3)
                .bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            TextField("Enter your task here", text: $title )
                .textFieldStyle(.roundedBorder)
            Button {
                print("✅Task Added")
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.blue)
                    .cornerRadius(30)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(.yellow)
    }
}

#Preview {
    AddTaskView()
}
