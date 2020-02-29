//
//  ContentView.swift
//  SimpleMenu
//
//  Created by Fernando Martin Garcia Del Angel on 29/02/20.
//  Copyright © 2020 Fernando Martin Garcia Del Angel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Content
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 6) { item in
//                    CardView()
                    Text("Card")
                }
            }
        .padding(20)
        }

    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
