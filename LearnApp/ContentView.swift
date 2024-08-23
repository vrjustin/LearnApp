//
//  ContentView.swift
//  LearnApp
//
//  Created by Justin Maronde on 8/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var friends: [String] = []
        
    var body: some View {
        VStack {
            TextField("Enter Name: ", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
            List(friends, id: \.self) { friend in
                Text(friend)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
