//
//  FooterView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 28/08/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight, and durable football helmets in the market at the affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)  // to apply Foreground Color in image as below. A mode that renders all non-transparent pixels as the foreground color.
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text(
                """
Copyright © Aayam Adhikari
All Rights Reserved
Made with 🩶 using SwiftUI
""")
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .layoutPriority(1)
            
            
        }  //: VSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)  // reference in Constant file
    }
}
