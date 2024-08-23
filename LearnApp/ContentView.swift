//
//  ContentView.swift
//  LearnApp
//
//  Created by Justin Maronde on 8/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search: String = ""
    @State private var friends: [String] = ["John", "Paul", "Ringo", "Dave", "Rick"]
    @State private var filteredFriends: [String] = []
        
    var body: some View {
        VStack {
            List(!search.isEmpty ? filteredFriends : friends, id: \.self) { friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) {
                filteredFriends = friends.filter {
                    $0.contains(search)
                }
            }
            
            Spacer()
        }
        .padding()
        .onAppear(perform: {
            filteredFriends = friends
        })
        .navigationTitle("Friends")
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
