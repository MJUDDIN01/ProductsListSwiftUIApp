//
//  StubNetworkingManager.swift
//  PhoneMarketListViewModelTest
//
//  Created by Jasim Uddin on 09/10/2023.

import Foundation


class MockNetworkingManager: NetworkingManagerProtocol {
    var fetchProductsCalled = false
    var fetchProductsResult: Result<[Products], NetworkingError> = .success([])

    func fetchProducts(completed: @escaping (Result<[Products], NetworkingError>) -> Void) {
        fetchProductsCalled = true
        completed(fetchProductsResult)
    }
}
