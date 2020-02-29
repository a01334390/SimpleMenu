//
//  CardView.swift
//  SimpleMenu
//
//  Created by Fernando Martin Garcia Del Angel on 29/02/20.
//  Copyright © 2020 Fernando Martin Garcia Del Angel. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    // MARK - CARD
    var body: some View {
        ZStack {
            Text("CARD")
        }
        .frame(width: 335, height: 545)
        .background(Color.pink)
        .cornerRadius(26)
        .shadow(radius: 8)
    }
}

//MARK: - Preview

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().previewLayout(.sizeThatFits)
    }
}
