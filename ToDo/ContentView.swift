//
//  ContentView.swift
//  ToDo
//
//  Created by Александр Калашников on 10.09.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    
    @StateObject var networkManager = NetworkManager.shared
    
    var body: some View {
        VStack {
            List(networkManager.todos, id:\.self) { todo in
                HStack {
                    Text(todo.todo)
                    Spacer()
//                    Text(tod)
                }
            }
            
//            Button(action: {
//                networkManager.fetchTodos()
//            }, label: {
//                Text("Fetch")
//                    .font(.title)
//                    .foregroundColor(.black)
//                    .padding(.horizontal, 30)
//                    .padding(.vertical, 10)
//                    .overlay(content: {
//                        RoundedRectangle(cornerRadius: 20)
//                            .stroke(Color.black, lineWidth: 2)
//                    })
//            })
        }
    }
}


#Preview {
    ContentView()
}
