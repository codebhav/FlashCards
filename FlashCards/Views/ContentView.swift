//
//  ContentView.swift
//  FlashCards
//
//  Created by whybhav on 10/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIndex = 0
    
    var body: some View {
        VStack(spacing: 130) {
            Spacer()
            FlashcardView(frontText: flashcards[currentIndex].front, backText: flashcards[currentIndex].back, currentIndex: $currentIndex)
                .padding(30)
            
            HStack(spacing: 140) {
                Button(action: {
                    currentIndex = max(currentIndex - 1, 0)
                }) {
                    Image(systemName: "arrowshape.backward.fill")
                        .font(.largeTitle)
                        .foregroundColor(currentIndex == 0 ? .gray : .blue)
                }
                .disabled(currentIndex == 0)
                .buttonStyle(NeumorphicButton(shape: RoundedRectangle(cornerRadius: 100)))
                
                Button(action: {
                    currentIndex = min(currentIndex + 1, flashcards.count - 1)
                }) {
                    Image(systemName: "arrowshape.forward.fill")
                        .font(.largeTitle)
                        .foregroundColor(currentIndex == flashcards.count - 1 ? .gray : .blue)
                }
                .disabled(currentIndex == flashcards.count - 1)
                .buttonStyle(NeumorphicButton(shape: RoundedRectangle(cornerRadius: 100)))
            }
            .padding()
            Spacer()
        }
        .onAppear{
            flashcards.shuffle()
            currentIndex = Int.random(in: 0..<flashcards.count)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.offWhite)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
