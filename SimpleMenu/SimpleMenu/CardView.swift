//
//  CardView.swift
//  SimpleMenu
//
//  Created by Fernando Martin Garcia Del Angel on 29/02/20.
//  Copyright © 2020 Fernando Martin Garcia Del Angel. All rights reserved.
//

import SwiftUI

struct CardView: View {
    //MARK: - Properties
    var card: Card
    // MARK: - Card
    var body: some View {
        ZStack {
            Image(card.imageName)
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }.offset(y: -218)
            Button(action: {
                print("Button was tapped")
            }) {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .accentColor(Color.white)
                        .foregroundColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors),
                                           startPoint: .leading,
                                           endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors),
                                   startPoint: .top,
                                   endPoint: .bottom))
        .cornerRadius(26)
        .shadow(radius: 8)
    }
}

//MARK: - Preview

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[2]).previewLayout(.sizeThatFits)
    }
}
