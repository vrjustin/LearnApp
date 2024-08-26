//
//  LearnAppApp.swift
//  LearnApp
//
//  Created by Justin Maronde on 8/23/24.
//

import SwiftUI

@main
struct LearnAppApp: App {

    @State private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appState)
        }
    }
}
