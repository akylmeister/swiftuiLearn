//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Akyl Temirgaliyev on 15.10.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }

    @Published var isShowingDetailView = false

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
