//
//  ContentView.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import SwiftUI

struct ProductsListView: View {
    @StateObject private var viewModel = ProductsListViewModel()
    
    var body: some View {
        
        ZStack {
            List(viewModel.products) { product in
                ProductsRow(product: product)
            }
            .navigationTitle("Phone List")
            .onAppear { viewModel.refreshProduct() }
            
            if viewModel.isLoading { ProductsLoadingView() }
        }
        .alert(item: $viewModel.alertData) { alertItem in
            return Alert(title: alertItem.title, message: alertItem.message,
                         dismissButton: alertItem.dismissButton)
        }
    }
}
