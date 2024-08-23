//
//  LearnAppApp.swift
//  LearnApp
//
//  Created by Justin Maronde on 8/23/24.
//

import SwiftUI

@main
struct LearnAppApp: App {

    @StateObject private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}
