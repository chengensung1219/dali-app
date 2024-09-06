//
//  DaliAPPApp.swift
//  DaliAPP
//
//  Created by Simon Sung on 9/3/24.
//

import SwiftUI
import Firebase

@main
struct DaliAPPApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
