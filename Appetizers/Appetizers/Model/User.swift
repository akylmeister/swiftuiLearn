//
//  User.swift
//  Appetizers
//
//  Created by Akyl Temirgaliyev on 20.10.2024.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
