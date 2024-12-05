//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Akyl Temirgaliyev on 20.10.2024.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle())
    }
}
