//
//  AddToCartDetailView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 03/09/2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        Button {
            // Action
            feedback.impactOccurred()
        } label: {
            // To make the button flexible horizontally, we add Spacer() as below
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
            
        } //: BUTTON
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())

    }
}

//MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
