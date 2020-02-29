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
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    // MARK: - Card
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
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
            }.offset(y: moveDownward ? -218 : -300)
            Button(action: {
                playSound(sound: "sound-chime", format: "mp3")
                self.hapticImpact.impactOccurred()
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
            .offset(y: moveUpward ? 210 : 300)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors),
                                   startPoint: .top,
                                   endPoint: .bottom))
        .cornerRadius(26)
        .shadow(radius: 8)
        .onAppear() {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
            
        }
    }
}

//MARK: - Preview

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[2]).previewLayout(.sizeThatFits)
    }
}
