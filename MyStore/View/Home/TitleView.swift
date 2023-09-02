//
//  TitleView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 02/09/2023.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTY
    var title: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title.uppercased())
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }  //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
//            .padding()
            .background(colorBackground)
    }
}
