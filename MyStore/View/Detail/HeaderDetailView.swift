//
//  HeaderDetailView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 03/09/2023.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }  //: VSTACK
        .foregroundColor(.white)
    }
}

//MARK: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
