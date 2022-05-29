//
//  WindowController.swift
//  LearnSwiftUIForMacOS
//
//  Created by Ram Patra on 29/05/2022.
//

import AppKit
import SwiftUI

class WindowController<RootView: View>: NSWindowController {
    convenience init(rootView: RootView) {
        let hostingController = NSHostingController(rootView: rootView.frame(width: 400, height: 400))
        let window = NSWindow(contentViewController: hostingController)
        window.setContentSize(NSSize(width: 400, height: 400))
        self.init(window: window)
    }
}
