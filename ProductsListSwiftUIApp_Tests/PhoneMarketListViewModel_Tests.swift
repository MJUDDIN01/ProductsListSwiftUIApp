//
//  PhoneMarketListViewModel_Tests.swift
//  ProductsListSwiftUIApp_Tests
//
//  Created by Jasim Uddin on 10/10/2023.
//

import XCTest
@testable import ProductsListSwiftUIApp

class ProductsListViewModelTests: XCTestCase {
    
    func testIsLoadingInitiallyFalse() {
        // Given
//        let isLoading = false
        let productFetcher = MockProductFetcher()
        // When
        let viewModel = ProductsListViewModel(productFetcher: productFetcher, isLoading: false)
        // Then
        XCTAssertFalse(viewModel.isLoading)
    }

    func testIsLoadingAfterRefresh() {
        // Given
        let productFetcher = MockProductFetcher()
        // When
        let viewModel = ProductsListViewModel(productFetcher: productFetcher, isLoading: true)
        // Simulate a refresh
        viewModel.refreshProduct()
        // Then
        XCTAssertTrue(viewModel.isLoading)
    }
    
    // Add more test cases as needed
    
}


