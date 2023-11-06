//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Gregory Porter on 7/3/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
