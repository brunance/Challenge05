//
//  GameView.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 08/11/22.
//

import SwiftUI

struct GameView: View {
    private var threeColumnGrid = [GridItem(.flexible()),
                                  GridItem(.flexible()),
                                  GridItem(.flexible())]

    private var sixColumnGrid = [GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible())]
    @State var cards = createCardList().shuffled()
    @State var matchedCards = [CardModel]()
    @State var userChoices = [CardModel]()
    var body: some View {
        if matchedCards.count == cards.count {
            HistoryView()
        } else {
            GeometryReader { geometry in
                ZStack {
                    Color("BackgroundColor1").ignoresSafeArea()
                    Image("AranhaPadrao")
                        .resizable()
                    VStack {

                        VStack {
                            Text("a dona")
                                .font(.custom("RubikBubbles-Regular", size: 32))
                                .foregroundColor(Color("TextColorNames"))
                            Text("Aranha")
                                .font(.custom("RubikBubbles-Regular", size: 48))
                                .foregroundColor(Color("TextColorNames"))
                        }

                        HStack {
                            VStack {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color("Card"))
                                Text("Violão")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color("Card"))
                                Text("Bateria")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                                    .padding(.init(top: 0, leading: -20, bottom: 0, trailing: -20))
                            }
                            VStack {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color("Card"))
                                Text("Chocalho")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                                    .padding(.init(top: 0, leading: -20, bottom: 0, trailing: -20))
                            }
                            VStack {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color("Card"))
                                Text("Flauta")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color("Card"))
                                Text("Gaita")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color("Card"))
                                Text("Ukulele")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                        }.padding(.init(top: 1, leading: 0, bottom: 20, trailing: 0))

                        LazyVGrid(columns: threeColumnGrid, spacing: 10) {
                            ForEach(cards) { card in
                                CardView(card: card,
                                         matchedCards: $matchedCards,
                                         userChoices: $userChoices,
                                         width: Int(geometry.size.width/4 + 10)
                                )
                            }
                        }
//                        VStack {
//                            Text("Match these cards to win: ")
//                                .font(.system(size: 28))
//                                .padding()
//                            LazyVGrid(columns: sixColumnGrid, spacing: 5) {
//                                ForEach(cardValues, id: \.self) { cardValue in
//                                    if !matchedCards.contains(where: {$0.text == cardValue}) {
//                                        Text(cardValue)
//                                            .font(.system(size: 50))
//                                    }
//                                }
//                            }
//                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
