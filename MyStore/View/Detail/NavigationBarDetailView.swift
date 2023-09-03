//
//  NavigationBarDetailView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 03/09/2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                // Action
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            } //: BUTTON
            
            Spacer()
            
            Button {
                // Action
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }


        } //: HSTACK
    }
}

//MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
