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
        VStack {
            // Thumbnail image at the top
            AsyncImage(url: product.thumbNailUrl) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 100)
                    .cornerRadius(10)
                    .foregroundColor(Color.orange)
            } placeholder: {
                Circle()
                    .frame(width: 32, height: 32)
                    .background(Color(.systemGray5))
            }
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
                    Text("\(product.discountPercentage.toPercentString())")
                }
                HStack {
                    Text("Tumbnail:").bold()
                    Text(product.thumbnail)
                        .padding()
                }
            }
            Spacer()
                .navigationBarTitle(product.brand, displayMode: .inline)
        }
    }
}
