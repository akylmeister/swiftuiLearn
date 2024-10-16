//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Akyl Temirgaliyev on 15.10.2024.
//

import SwiftUI

struct AFButton: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test title")
}
