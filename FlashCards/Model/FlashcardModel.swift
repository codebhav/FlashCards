//
//  FlashcardModel.swift
//  FlashCards
//
//  Created by whybhav on 10/08/23.
//

import Foundation
import SwiftUI

struct Flashcard: Hashable {
    let id = UUID()
    let front: String
    let back: String
}

struct FlashcardView: View {
    @State private var isBackVisible = false
    var frontText: String
    var backText: String
    @Binding var currentIndex: Int
    
    var body: some View {
        ZStack {
            CardView(content: frontText)
                .rotation3DEffect(.degrees(isBackVisible ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            
            CardBView(content: backText)
                .rotation3DEffect(.degrees(isBackVisible ? 0 : -180), axis: (x: 0, y: 1, z: 0))
                .opacity(isBackVisible ? 1.0 : 0.0)
        }
        .onTapGesture {
            withAnimation {
                isBackVisible.toggle()
            }
        }
        .onChange(of: currentIndex) { newValue in
            isBackVisible = false
        }
        .frame(width: 300, height: 200)
    }
}
