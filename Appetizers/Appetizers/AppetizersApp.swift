//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Akyl Temirgaliyev on 20.10.2024.
//

import SwiftUI

@main
struct AppetizersApp: App {

    var order = Order()

    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
