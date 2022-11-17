//
//  CardView.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 08/11/22.
//

import SwiftUI

struct CardView: View {
    @ObservedObject var card: CardModel
    @Binding var matchedCards: [CardModel]
    @Binding var userChoices: [CardModel]

    let width: Int = 100
    let height: Int = 90

    var body: some View {
        if card.isFaceUp || matchedCards.contains(where: {$0.id == card.id}) {
            
            ZStack {
                Rectangle()
                    .frame(width: CGFloat(width), height: CGFloat(width))
                    .foregroundColor(Color("TitleHistory"))
                    .cornerRadius(10)
                Image("BarataGameCard")
                    .resizable()
                    .frame(width: CGFloat(width), height: CGFloat(width))
                    .cornerRadius(10)
                Image(card.text)
                    .resizable()
                    .frame(width: CGFloat(width)/1.5, height: CGFloat(width)/1.5)
                    .background(Color("TitleHistory"))
                    .cornerRadius(10)
                    .onAppear(perform: {
                        guard let titleOfSound = card.sound else {
                                return
                        }
                        playSound(sound: titleOfSound, type: "mp3")
                    })
            }
            
        } else {
            Image("Carta")
                .resizable()
//                .font(.system(size: 50))
                .frame(width: CGFloat(width), height: CGFloat(width))
                .onTapGesture {
                    if userChoices.count == 0 {
                        card.turnOver()
                        userChoices.append(card)
                    } else if userChoices.count == 1 {
                        card.turnOver()
                        userChoices.append(card)
                        withAnimation(Animation.linear.delay(1)) {
                            for thisCard in userChoices {
                                thisCard.turnOver()
                            }
                        }
                        checkForMatch()
                    }
                }
        }
    }
    func checkForMatch() {
        if userChoices[0].text == userChoices[1].text {
            matchedCards.append(userChoices[0])
            matchedCards.append(userChoices[1])
            guard let titleOfSound = userChoices[0].sound else {
                    return
            }
            playSound(sound: titleOfSound, type: "wav")
        }
        userChoices.removeAll()
    }
}
