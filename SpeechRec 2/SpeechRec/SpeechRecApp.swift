//
//  SpeechRecApp.swift
//  SpeechRec
//
//  Created by AA on 11/5/22.
//

import SwiftUI

@main
struct SpeechRecApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.locale, .init(identifier: "ar"))
        }
    }
}
