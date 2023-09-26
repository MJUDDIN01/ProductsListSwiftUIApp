//
//  ProductsRow.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import SwiftUI

struct ProductsRow: View {
    let product: Products
    
    var body: some View {
        VStack {
            Text(product.title)
                .bold()
                .padding()
            Text(product.description)
            
            Spacer()
        }
    }
}

