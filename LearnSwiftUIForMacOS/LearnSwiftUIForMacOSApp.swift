//
//  LearnSwiftUIForMacOSApp.swift
//  LearnSwiftUIForMacOS
//
//  Created by Ram Patra on 29/05/2022.
//

import SwiftUI

@main
struct LearnSwiftUIForMacOSApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                Button("Content View") {
                    let windowController = WindowController(rootView: ContentView())
                    windowController.window?.title = "Content View"
                    windowController.showWindow(nil)
                }
                Button("New Window") {
                    let windowController = WindowController(rootView: NewWindowParentView())
                    windowController.window?.title = "New Window Demo"
                    windowController.showWindow(nil)
                }
            }
            .frame(width: 400, height: 400)
        }
    }
}
