//
//  ProductDetailView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 03/09/2023.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.connectedScenes
                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }?
                    .safeAreaInsets.top)  // to get the value of top SafeArea on any iPhone device
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            
            // DETAIL BOTTOM PART
            
            // RATINGS + SIZES
            
            // DESCRIPTION
            
            // QUANTITY + FAVOURITE
            
            // ADD TO CART
            Spacer()
            
        }  //: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

//MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
