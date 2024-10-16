//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Akyl Temirgaliyev on 15.10.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false

    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)

            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .padding()
                .font(.body)

            Spacer()

            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
