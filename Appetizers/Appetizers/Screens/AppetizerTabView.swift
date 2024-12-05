//
//  AppetizerTabView.swift
//  Appetizers
//
//  Created by Akyl Temirgaliyev on 20.10.2024.
//

import Foundation
import SwiftUI

struct AppetizerTabView: View {

    @EnvironmentObject var order: Order

    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }

            AccountView()
                .tabItem { Label("Account", systemImage: "person") }

            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}