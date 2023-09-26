//
//  File.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import Foundation
import SwiftUI

enum ServerErrorAlert {
    static let unableToParseData = AlertData(title: Text("Fail to refresh"),
                                             message: Text("Unable parse data from server"),
                                             dismissButton: .default(Text("OK")))
    static let urlSessionError = AlertData(title: Text("Fail to refresh"),
                                           message: Text("Unable parse data from server"),
                                           dismissButton: .default(Text("OK")))
    static let httpFailureResponseCode = AlertData(title: Text("Fail to refresh"),
                                                   message: Text("Unable parse data from server"),
                                                   dismissButton: .default(Text("OK")))
    static let noDataReceived = AlertData(title: Text("Fail to refresh"),
                                          message: Text("Unable parse data from server"),
                                          dismissButton: .default(Text("OK")))
}
