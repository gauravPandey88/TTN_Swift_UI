//
//  NavigationView.swift
//  TTNSwiftUI
//
//  Created by Gaurav Pandey on 26/06/24.
//

import SwiftUI

struct NavigationView: App {
    @State private var path = NavigationPath()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                LoginView(path: $path)
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .home:
                            HomeView(path: $path)
                        }
                    }
            }
        }
    }
}
