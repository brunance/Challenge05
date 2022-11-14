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
                    Color("Primaria1").ignoresSafeArea()
                    Image("AranhaPadrao")
                        .resizable()
                    VStack {

                        VStack {
                            Text("a dona")
                                .font(.custom("RubikBubbles-Regular", size: 32))
                                .foregroundColor(Color("TitleHistory"))
                            Text("Aranha")
                                .font(.custom("RubikBubbles-Regular", size: 48))
                                .foregroundColor(Color("TitleHistory"))
                        }

                        Text("Combine os sons para desbloquear uma melodia")
                            .font(.system(size: 16))
                            .foregroundColor(Color("TitleHistory"))

                        VStack {

                            Text("0/6")
                                .font(.system(size: 16))
                                .foregroundColor(Color("TitleHistory"))

                            HStack {
                                VStack {
                                    Image("Pandeiro")
                                        .font(.system(size: 40))
                                        .foregroundColor(.white)
                                }
                                VStack {
                                    Image("Chocalho")
                                        .font(.system(size: 40))
                                        .foregroundColor(.white)
                                }
                                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                                VStack {
                                    Image("Flauta")
                                        .font(.system(size: 40))
                                        .foregroundColor(.white)
                                }
                                VStack {
                                    Image("Saxofone")
                                        .font(.system(size: 40))
                                        .foregroundColor(.white)
                                }
                                VStack {
                                    Image("Violao")
                                        .font(.system(size: 40))
                                    .foregroundColor(.white)                            }
                                VStack {
                                    Image("Piano")
                                        .font(.system(size: 40))
                                        .foregroundColor(.white)
                                }
                                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 0))
                            }
                            .padding(.init(top: 16, leading: 0, bottom: 5, trailing: 0))
                        }
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
