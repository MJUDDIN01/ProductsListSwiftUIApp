//
//  PhoneMarketListViewModelTest.swift
//  PhoneMarketListViewModelTest
//
//  Created by Jasim Uddin on 09/10/2023.
//

import XCTest

class ProductsListViewModelTests: XCTestCase {
    var viewModel: ProductsListViewModel!
    var mockNetworkingManager: MockNetworkingManager!

    override func setUp() {
        super.setUp()
        mockNetworkingManager = MockNetworkingManager()
        viewModel = ProductsListViewModel(networkingManager: mockNetworkingManager)
    }

    override func tearDown() {
        mockNetworkingManager = nil
        viewModel = nil
        super.tearDown()
    }

    func testPullToRefresh() {
        // Setup: Add some products to the view model
        viewModel.products = [Products(name: "TestProduct")]

        // Action: Call pullToRefresh
        viewModel.pullToRefresh()

        // Assert: Products should be emptied
        XCTAssertTrue(viewModel.products.isEmpty)
        XCTAssertTrue(mockNetworkingManager.fetchProductsCalled)
    }

    func testRefreshProductSuccess() {
        // Setup: Define expected products
        let expectedProducts = [Products(name: "Product1"), Products(name: "Product2")]
        mockNetworkingManager.fetchProductsResult = .success(expectedProducts)

        // Action: Call refreshProduct
        viewModel.refreshProduct()

        // Assert: ViewModel state should be updated
        XCTAssertTrue(viewModel.isLoading)
        XCTAssertEqual(viewModel.products, expectedProducts)
        XCTAssertNil(viewModel.alertData)
        XCTAssertFalse(viewModel.isLoading)
    }

    func testRefreshProductFailure() {
        // Setup: Define expected error
        mockNetworkingManager.fetchProductsResult = .failure(.unableToParseData)

        // Action: Call refreshProduct
        viewModel.refreshProduct()

        // Assert: ViewModel state should be updated with the error
        XCTAssertTrue(viewModel.isLoading)
        XCTAssertTrue(viewModel.products.isEmpty)
        XCTAssertNotNil(viewModel.alertData)
        XCTAssertEqual(viewModel.alertData, ServerErrorAlert.unableToParseData)
        XCTAssertFalse(viewModel.isLoading)
    }
}
