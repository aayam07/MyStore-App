//
//  FeaturedItemView.swift
//  MyStore
//
//  Created by Aayam Adhikari on 31/08/2023.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES
    
    let player: Player
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])  // players is a global constant
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
