//
//  ReminderViewModel.swift
//  ReMind
//
//  Created by Kilmer Li on 2024/11/29.
//

import Foundation

class ReminderViewModel: ObservableObject {
    private var timer: Timer?

    func startReminder() {
        print("start")
    }

    func stopReminder() {
        print("stop")
    }
}
