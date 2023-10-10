//
//  ProductsListSwiftUIAppTests.swift
//  ProductsListSwiftUIAppTests
//
//  Created by Jasim Uddin on 09/10/2023.
//


import XCTest
@testable import ProductsListSwiftUIApp // Replace with the actual module name

class ProductsListViewModelTests: XCTestCase {
    var viewModel: ProductsListViewModel!
    var mockProductFetcher: MockProductFetcher!
    
    override func setUpWithError() throws {
        mockProductFetcher = MockProductFetcher()
        viewModel = ProductsListViewModel(productFetcher: mockProductFetcher)
    }

    override func tearDownWithError() throws {
        viewModel = nil
        mockProductFetcher = nil
    }

    func testPullToRefresh() {
        // Ensure products array is not empty
        viewModel.products = [Products(id: "1", name: "Test Product", price: 20.0)]
        XCTAssertEqual(viewModel.products.count, 1)

        // Call pullToRefresh
        viewModel.pullToRefresh()

        // Assert that products array is empty after calling pullToRefresh
        XCTAssertEqual(viewModel.products.count, 0)

        // Assert that refreshProduct was called
        XCTAssertTrue(mockProductFetcher.fetchProductsCalled)
    }
}

