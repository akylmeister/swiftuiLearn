//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Akyl Temirgaliyev on 15.10.2024.
//

import SwiftUI

struct FrameworkGridView: View {

    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                    isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
