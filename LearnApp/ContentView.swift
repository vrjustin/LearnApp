//
//  ContentView.swift
//  LearnApp
//
//  Created by Justin Maronde on 8/23/24.
//

import SwiftUI

struct LightBulbView: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        VStack {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow : .black)
            Button("Toggle") {
                isOn.toggle()
            }
        }
    }
}

struct ContentView: View {
    
    @State private var isBulbOn: Bool = false
        
    var body: some View {
        VStack {
            LightBulbView(isOn: $isBulbOn)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(isBulbOn ? .black : .red)

    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
