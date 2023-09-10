//
//  Shop.swift
//  MyStore
//
//  Created by Aayam Adhikari on 10/09/2023.
//

import Foundation

// ObservableObject allows this class to be used inside any views we want, and when the changes happen
// the view will reload
class Shop: ObservableObject {
    
    // @Published tells SwiftUI that any changes to these properties should trigger view reload
    @Published var showingProduct: Bool = false  // to determine whether to show to hide the product detail view
    @Published var selectedProduct: Product? = nil  // to know which specific product to show on the screen
}
