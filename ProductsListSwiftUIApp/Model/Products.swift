//
//  PhoneMarketData.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import Foundation

struct ProductResponse: Codable {
    let products: [Products]
    let total: Int
}

struct Products: Identifiable, Codable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
    
    var thumbNailUrl: URL? {
        return URL(string: thumbnail)
    }
}


