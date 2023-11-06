//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Gregory Porter on 7/3/23.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}
extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(
            title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jon"], lengthInMinutes: 10, theme: .yellow
        ),
        DailyScrum(
            title: "App Dev", attendees: ["Chad", "Daisee", "Simone", "John"], lengthInMinutes: 15, theme: .orange
        ),
        DailyScrum(
            title: "Web Dev", attendees: ["Cat", "Daze", "Shimon", "Johnny"], lengthInMinutes: 5, theme: .poppy
        )
    ]
}
