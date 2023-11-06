//
//  LabelStyle.swift
//  Scrumdinger
//
//  Created by Gregory Porter on 7/3/23.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}


extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trialingIcon: Self { Self() }
}
