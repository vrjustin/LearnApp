//
//  ContentView.swift
//  LearnApp
//
//  Created by Justin Maronde on 8/23/24.
//

import SwiftUI

//Pre iOS 17
class AppState: ObservableObject {
    @Published var isOn: Bool = false
}

struct LightBulbView: View {

    @EnvironmentObject private var appState: AppState

    var body: some View {
        VStack {
            Image(systemName: appState.isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .yellow : .black)
            Button("Toggle") {
                appState.isOn.toggle()
            }
        }
    }
}

struct LightRoomView: View {
    var body: some View {
        LightBulbView()
    }
}

struct ContentView: View {
    
    @EnvironmentObject private var appState: AppState
        
    var body: some View {
        VStack {
            LightRoomView()
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(appState.isOn ? .black : .red)

    }
}

#Preview {
    ContentView()
        .environmentObject(AppState())
}
