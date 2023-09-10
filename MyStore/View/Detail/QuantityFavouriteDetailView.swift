//
//  QuantityFavouriteDetailView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 03/09/2023.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - PROPERTY
    @State private var counter: Int = 0
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                // ACTION
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                // ACTION
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                // Action
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }


        }  //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

//MARK: - PREVIEW
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
