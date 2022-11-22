//
//  OrkhestraWatchApp.swift
//  OrkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 16/11/22.
//

import SwiftUI

@main
struct OrkhestraWatchApp: App {
    @StateObject var audioManager = AudioManagerWatch()
    var body: some Scene {
        WindowGroup {
            MenuViewWatchApp()
                .environmentObject(audioManager)
        }
    }
}
