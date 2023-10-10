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
        let productFetcher = MockProductFetcher()
        let viewModel = ProductsListViewModel(productFetcher: productFetcher)
        XCTAssertFalse(viewModel.isLoading)
    }

    func testIsLoadingAfterRefresh() {
        let productFetcher = MockProductFetcher()
        let viewModel = ProductsListViewModel(productFetcher: productFetcher)
        
        // Simulate a refresh
        viewModel.refreshProduct()
        
        XCTAssertTrue(viewModel.isLoading)
    }
    
    // Add more test cases as needed
    
}


