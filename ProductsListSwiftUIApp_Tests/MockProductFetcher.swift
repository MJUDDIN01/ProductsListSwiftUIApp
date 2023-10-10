//
//  MockProductFetcher.swift
//  ProductsListSwiftUIApp_Tests
//
//  Created by Jasim Uddin on 10/10/2023.
//
import XCTest
@testable import ProductsListSwiftUIApp

// Mock implementation of ProductFetching for testing
class MockProductFetcher: ProductFetching {
    func fetchProducts(completed: @escaping (Result<[ProductsListSwiftUIApp.Products], ProductsListSwiftUIApp.NetworkingError>) -> Void) { }
    
    func fetchProducts(completion: @escaping (Result<[Products], Error>) -> Void) {
        // Simulate a successful response with mock products
        let mockProducts = [
            Products(id: 123, title: "iPhone", description: "New Phone", price: 200, discountPercentage: 20.00, rating: 4.5, stock: 100, brand: "Appkle", category: "Phone", thumbnail: "image", images: ["images"])
        ]
        
        completion(.success(mockProducts))
    }
}
