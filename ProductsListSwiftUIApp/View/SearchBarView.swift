//
//  SearchBar.swift
//  ProductsListSwiftUIApp
//
//  Created by Jasim Uddin on 02/10/2023.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search Products", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.vertical, 8)
        }
        .background(Color(.systemGray6))
    }
}

