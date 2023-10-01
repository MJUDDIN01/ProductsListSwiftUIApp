//
//  Double.swift
//  ProductsListSwiftUIApp
//
//  Created by Jasim Uddin on 01/10/2023.
//

import Foundation

extension Double {
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }
    
   
    func toPercentString() -> String {
        guard let numberAsString = numberFormatter.string(for: self) else { return "" }
        return numberAsString + "%"
    }
    
}
