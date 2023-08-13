//
//  CardView.swift
//  FlashCards
//
//  Created by whybhav on 10/08/23.
//

import SwiftUI

struct CardView: View {
    var content: String
    
    var body: some View {
                Text(content)
                    .foregroundColor(.gray)
                    .font(.title)
                    .bold()
                    .frame(width: 250, height: 300, alignment: .center)
                    .padding(30)
                    .background(Color.offWhite)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct CardBView: View {
    var content: String
    
    var body: some View {

                Text(content)
                    .foregroundColor(.gray)
                    .font(.body)
                    .frame(width: 250, height: 300, alignment: .center)
                    .padding(30)
                    .background(Color.offWhite)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}
