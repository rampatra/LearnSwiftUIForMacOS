//
//  ContentView.swift
//  LearnSwiftUIForMacOS
//
//  Created by Ram Patra on 29/05/2022.
//

import SwiftUI

struct NewWindowParentView: View {
    @State private var windowCount = 1
    
    var body: some View {
        Button("Show new window") {
            let windowController = WindowController(rootView: NewWindowChildView())
            windowController.window?.title = "Child Window \(windowCount)"
            windowCount += 1
            windowController.showWindow(nil)
        }
    }
}
