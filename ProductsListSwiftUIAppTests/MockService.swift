//
//  MockService.swift
//  ProductsListSwiftUIAppTests
//
//  Created by Jasim Uddin on 09/10/2023.
//

import Foundation

class MockProductFetcher: ProductFetching {
    var fetchProductsCalled = false
    
    func fetchProducts(completed: @escaping (Result<[Products], NetworkingError>) -> Void) {
        fetchProductsCalled = true
        // Simulate a successful product fetch with some dummy data
        completed(.success([Products(from: ProductResponse, id: "1", name: "Mock Product", price: 10.0)]))
    }
}
