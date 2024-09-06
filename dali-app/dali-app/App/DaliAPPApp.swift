//
//  DaliAPPApp.swift
//  DaliAPP
//
//  Created by Simon Sung on 9/3/24.
//

import SwiftUI
import Firebase
import FirebaseFirestore

@main
struct DaliAPPApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var viewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
