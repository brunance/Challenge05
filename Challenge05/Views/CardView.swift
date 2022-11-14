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

    let width: Int

    var body: some View {
        if card.isFaceUp || matchedCards.contains(where: {$0.id == card.id}) {
            Image(card.text)
                .font(.system(size: 50))
                .padding()
                .frame(width: 111, height: 95)
//                .foregroundColor(Color("TitleHistory"))
//                .background("AranhaGameCard")
                .background(Color("TitleHistory"))
                .background(Image("AranhaGameCard"))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.18, green: 0.32, blue: 0.46), lineWidth: 5)
                )
                .onAppear(perform: {
                    guard let titleOfSound = card.sound else {
                            return
                    }
                    playSound(sound: titleOfSound, type: "wav")
                })
        } else {
//            Text("")
//                .font(.system(size: 50))
//                .padding()
//                .frame(width: CGFloat(width), height: CGFloat(width))
//                .background(Color("Card"))
//                .cornerRadius(10)

            Image("Carta")
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
