//
//  PhoneMarketListViewModel.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import Foundation

class ProductsListViewModel: ObservableObject {
    @Published var products: [Products] = []
    @Published var isLoading: Bool = false
    @Published var alertData: AlertData?
    @Published var searchText = ""
    
    private let productFetcher: ProductFetching
    
    // Added constructor dependency 
    init(productFetcher: ProductFetching) {
        self.productFetcher = productFetcher
    }
    
    func pullToRefresh() {
        products.removeAll()
        refreshProduct()
    }
    func refreshProduct() {
        isLoading = true
        
        productFetcher.fetchProducts { [weak self] result in
            DispatchQueue.main.async { [weak self] in
                self?.isLoading = false
                
                switch result {
                case .success(let newPhone):
                    self?.products = newPhone
                    
                case .failure(let error):
                    switch error {
                    case .unableToParseData:
                        self?.alertData = ServerErrorAlert.unableToParseData
                    case .urlSessionError:
                        self?.alertData = ServerErrorAlert.urlSessionError
                    case .httpFailureResponseCode:
                        self?.alertData = ServerErrorAlert.httpFailureResponseCode
                    case .noDataReceived:
                        self?.alertData = ServerErrorAlert.noDataReceived
                    }
                }
            }
        }
    }
}
