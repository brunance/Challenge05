//
//  OrkhestraApp.swift
//  Challenge05
//
//  Created by Bruno França do Prado on 07/11/22.
//

import SwiftUI

@main
struct OrkhestraApp: App {
    @StateObject var audioManager = AudioManager()
    var body: some Scene {
        WindowGroup {
            HistoryView()
                .environmentObject(audioManager)
        }
    }
}
