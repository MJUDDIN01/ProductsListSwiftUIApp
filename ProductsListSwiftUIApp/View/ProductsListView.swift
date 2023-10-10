//
//  ContentView.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import SwiftUI

struct ProductsListView: View {
    @StateObject private var viewModel: ProductsListViewModel
    
    init() {
        let networkingManager = NetworkingManager.shared
        self._viewModel = StateObject(wrappedValue: ProductsListViewModel(productFetcher: networkingManager))
    }
    
    var body: some View {
        ZStack {
                List(viewModel.products) { product in
                    NavigationLink {
                        ProductsDetailView(product: product)
                    } label: {
                        ProductsRow(product: product)
                    }
                }
                .navigationTitle("Latest Products")
                .searchable(text: $viewModel.searchText)
                .onAppear { viewModel.refreshProduct() }
                .refreshable {
                    viewModel.pullToRefresh()
                }
                if viewModel.isLoading { ProductsLoadingView() }
            }
            .alert(item: $viewModel.alertData) { alertItem in
                return Alert(title: Text(alertItem.title), message: Text(alertItem.message),
                             dismissButton: .default(Text(alertItem.dismissButton)))
            }
    }
}
