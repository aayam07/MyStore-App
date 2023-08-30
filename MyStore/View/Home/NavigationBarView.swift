//
//  NavigationBarView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 30/08/2023.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var logoIsAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                // Action
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
//                    .imageScale(.large)
                    .foregroundColor(.black)
            }  //: BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(logoIsAnimating ? 1 : 0)
                .offset(x: 0, y: logoIsAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(Animation.easeOut(duration: 0.5)) {
                        logoIsAnimating.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                // Action
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
    //                    .imageScale(.large)
                    .foregroundColor(.black)
                    
                    // for small red mark in the cart
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
                
            }


        }  //: HSTACK
        
    }
}

//MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
