//
//  CardModel.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 08/11/22.
//

import Foundation
import SwiftUI

class CardModel: Identifiable, ObservableObject {
    var id = UUID()
    @Published var isFaceUp = false
    @Published var isMatched = false
    var text: String
    init(text: String) {
        self.text = text
    }
    func turnOver() {
        self.isFaceUp.toggle()
    }
}

let cardValues: [String] = [
    "🎸", "🥁", "🎷", "📯", "🪕", "🎻", "🎹", "🪗"
]

func createCardList() -> [CardModel] {
    var cardList = [CardModel]()
    for cardValue in cardValues {
        cardList.append(CardModel(text: cardValue))
        cardList.append(CardModel(text: cardValue))
    }
    return cardList
}

let faceDownCard = CardModel(text: "?")
