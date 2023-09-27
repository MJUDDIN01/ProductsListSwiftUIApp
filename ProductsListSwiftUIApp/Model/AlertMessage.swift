//
//  AlertMessage.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import Foundation

struct AlertData: Identifiable {
    var id = UUID()
    var title: String
    var message: String
    var dismissButton: String
}
