//
//  NetworkingError.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import Foundation

enum NetworkingError: Error {
    case unableToParseData
    case urlSessionError
    case httpFailureResponseCode
    case noDataReceived
}
