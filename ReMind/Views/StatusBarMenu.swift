//
//  StatusBarMenu.swift
//  ReMind
//
//  Created by Kilmer Li on 2024/11/29.
//

import SwiftUI

struct StatusBarMenu: View {
    @EnvironmentObject var viewModel: ReminderViewModel

    var body: some View {
        VStack {
            Button("Start Reminder") {
                viewModel.startReminder()
            }
            Button("Stop Reminder") {
                viewModel.stopReminder()
            }
            Divider()
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
        }
        .frame(width: 200)
    }
}
