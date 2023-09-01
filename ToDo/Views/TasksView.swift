//
//  TasksView.swift
//  ToDO
//
//  Created by John Suman on 2023/09/01.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
        VStack {
            Text("Tasks")
                .font(.title3)
                .bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding()
            
            List {
                ForEach(realmManager.tasks, id: \.id) { task in
                    TaskRow(task: task.title, completed: task.completed)
                        .onTapGesture {
                            realmManager.updateTask(id: task.id, completed: !task.completed)
                        }
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive) {
                                realmManager.deleteTask(id: task.id)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
            }
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.yellow/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TasksView()
        .environmentObject(RealmManager())
}
