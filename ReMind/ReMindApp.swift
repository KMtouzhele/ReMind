//
//  ReMindApp.swift
//  ReMind
//
//  Created by Kilmer Li on 2024/11/29.
//

import SwiftUI
import AppKit
import SwiftData

@main
struct ReMindApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var reminderViewModel = ReminderViewModel()

    var body: some Scene {
        WindowGroup {
            EmptyView()
        }
        .windowStyle(.hiddenTitleBar)
        MenuBarExtra("Drink Water", systemImage: "drop") {
            StatusBarMenu()
                .environmentObject(reminderViewModel)
        }
        .menuBarExtraStyle(.menu)
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem?
    var popover: NSPopover?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApp.setActivationPolicy(.accessory)
        ProcessInfo.processInfo.disableAutomaticTermination("Hide Dock Icon")
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false
    }
}

