//
//  GameView.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 08/11/22.
//

import SwiftUI

struct GameView: View {
    private var fourColumnGrid = [GridItem(.flexible()),
                                  GridItem(.flexible()),
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
                VStack {
                    Text("Título")
                        .font(.largeTitle)
                    LazyVGrid(columns: fourColumnGrid, spacing: 20) {
                        ForEach(cards) { card in
                            CardView(card: card,
                                     width: Int(geometry.size.width/4 - 10),
                                     matchedCards: $matchedCards,
                                     userChoices: $userChoices)
                        }
                    }
                    VStack {
                        Text("Match these cards to win: ")
                            .font(.system(size: 28))
                            .padding()
                        LazyVGrid(columns: sixColumnGrid, spacing: 5) {
                            ForEach(cardValues, id: \.self) { cardValue in
                                if !matchedCards.contains(where: {$0.text == cardValue}) {
                                    Text(cardValue)
                                        .font(.system(size: 50))
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
