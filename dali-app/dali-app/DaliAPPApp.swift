//
//  DaliAPPApp.swift
//  DaliAPP
//
//  Created by Simon Sung on 9/3/24.
//

import SwiftUI

@main
struct DaliAPPApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
