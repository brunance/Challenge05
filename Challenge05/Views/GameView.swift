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

    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared

    @State var cards = createCardList().shuffled()
    @State var matchedCards = [CardModel]()
    @State var userChoices = [CardModel]()
    @State private var showAlert = false
    @State var isGameView = false
    var body: some View {

        let currentHistory = historyList[hvm.historyCount]

        if matchedCards.count == cards.count {
            CountDownView(isGameView: $isGameView)
        } else {
            GeometryReader { geometry in
                ZStack {
                    Color("Primaria1").ignoresSafeArea()
                    Image("\(currentHistory.name)Padrao")
                        .resizable()
                    VStack {
                        VStack {
                            Button("Sair aqui") {
                                showAlert = true
                            }
                            .alert(isPresented: $showAlert) {
                                Alert(
                                    title: Text("Tem certeza de que quer sair?"),
                                    message: Text("A sessão de música não será salva."),
                                    primaryButton: .default(
                                        Text("Continuar")
                                    ),
                                    secondaryButton: .destructive(
                                        Text("Sair")
                                    )
                                )
                            }

                            VStack {
                                ForEach(0...currentHistory.titleList.count - 1, id: \.self) { num in
                                    Text(currentHistory.titleList[num])
                                        // swiftlint:disable:next line_length
                                        .font(.custom("RubikBubbles-Regular", size: CGFloat(currentHistory.sizeTitleList[num])))
                                        .foregroundColor(Color("TitleHistory"))
                                }
                            }
                        }

                        Text("Combine os sons para desbloquear uma melodia")
                        //                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.system(size: 16))
                        //                            .fontWeight(.bold)
                            .foregroundColor(Color("TitleHistory"))

                        Text("0/6")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .font(.system(size: 16))
                            .foregroundColor(Color("TitleHistory"))

                        VStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .foregroundColor(Color("TitleHistory"))
                                    .frame(width: 350, height: 60)
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
                                            .foregroundColor(.white)
                                    }
                                    VStack {
                                        Image("Piano")
                                            .font(.system(size: 40))
                                            .foregroundColor(.white)
                                    }
                                    .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 0))
                                }
                                .padding(.init(top: 5, leading: 0, bottom: 5, trailing: 0))
                            }

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
                .ignoresSafeArea()
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
