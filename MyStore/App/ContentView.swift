//
//  ContentView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 28/08/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop // this view can now access the properties of Shop class. @EnvironmentObject tells SwiftUI to provide the properties value rather than explicitly creating it
    
    
    //MARK: - BODY
    var body: some View {
        // ZStack is embedded to overcome the notches in different iPhones
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
    //                    .padding(.horizontal)
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.connectedScenes
                            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                            .first { $0.isKeyWindow }?
                            .safeAreaInsets.top)  // to get the value of top SafeArea on any iPhone device
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)  // navigation bar view ko sabai content mai shadow apply huncha
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
    //                            .frame(height: UIScreen.main.bounds.width / 1.475)
                                .frame(minHeight: 256)
                                .padding(.vertical, 10)

                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, alignment: .center, spacing: rowSpacing, pinnedViews: []) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut(duration: 2)) {
                                                // SwiftUI tracks for any changes in these properties in the environment and automatically triggers the view's update
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }  //: FOR LOOP
                            }  //: LAZYVGRID
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }  //: VSTACK
                    }  //: SCROLL VIEW
                    
                    
                }  //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }  //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())  // preview ma pani kasari shared data lai access garni vanera vannu parcha to render dynamically
    }
}
