//
//  File.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import Foundation

enum ServerErrorAlert {
    static let unableToParseData = AlertData(title: "Fail to refresh",
                                             message: "Unable parse data from server",
                                             dismissButton: "OK")
    static let urlSessionError = AlertData(title: "Fail to refresh",
                                           message: "Unable parse data from server",
                                           dismissButton: "OK")
    static let httpFailureResponseCode = AlertData(title: "Fail to refresh",
                                                   message: "Unable parse data from server",
                                                   dismissButton: "OK")
    static let noDataReceived = AlertData(title: "Fail to refresh",
                                          message: "Unable parse data from server",
                                          dismissButton: "OK")
}
