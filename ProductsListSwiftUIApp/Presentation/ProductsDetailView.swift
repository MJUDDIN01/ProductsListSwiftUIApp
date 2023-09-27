//
//  ProductsDetailView.swift
//  ProductsListSwiftUIApp
//
//  Created by Jasim Uddin on 27/09/2023.
//

import SwiftUI

struct ProductsDetailView: View {
    let product: Products
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Title: ")
                    .bold()
                Text(product.title)
            }
            HStack {
                Text("Rating:")
                    .bold()
                Text("\(product.rating)")
            }
            HStack {
                Text("Category: ")
                    .bold()
                Text(product.category)
            }
            HStack {
                Text("Description: ")
                    .bold()
                Text(product.description)
            }
            HStack {
                Text("Stock: ").bold()
                Text("\(product.stock)")
            }
            HStack {
                Text("Price: ").bold()
                Text("\(product.price)")
            }
            HStack {
                Text("Discount: ").bold()
                Text("\(product.discountPercentage)")
            }
            HStack {
                Text("Tumbnail:").bold()
                Text(product.thumbnail)
                    .padding()
            }

        }
        Spacer()
            .navigationTitle(product.brand)
    }
}


