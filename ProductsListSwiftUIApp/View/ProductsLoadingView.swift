//
//  ProductsLoadingView.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import SwiftUI

struct ProductsLoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .gray))
                .scaleEffect(2)
        }
    }
}

