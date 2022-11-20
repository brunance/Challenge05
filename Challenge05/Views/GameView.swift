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
    @State private var showingHistoryView = false

    let width: Int = 50
    let height: Int = 50

    var body: some View {

        let currentHistory = historyList[hvm.historyId]

        if matchedCards.count == cards.count {
            CountDownView(isGameView: $isGameView)
        } else {
            NavigationView {
                GeometryReader { geometry in
                    ZStack {
                        Color("Primaria1").ignoresSafeArea()
                        Image("\(currentHistory.name)Padrao")
                            .resizable()
                        VStack {
                            ZStack {
                                Button(action: {
                                    showAlert = true
                                }, label: {
                                    ZStack {
                                        Image(systemName: "xmark.circle.fill")
                                            .frame(alignment: .trailing)
                                            .font(.system(size: 37))
                                            .foregroundStyle(Color("CircleCount"))
                                    }
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                })
                                .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Por favor, espere!"),
                                        message: Text("Você tem certeza que deseja abandonar a dinâmica agora?"),
                                        primaryButton: .default(
                                            Text("Continuar")
                                        ),
                                        secondaryButton: .destructive(
                                            Text("Sair"),
                                            action: {
                                                showingHistoryView = true
                                            }
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
                            }.padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))

                            Text("Combine os sons para desbloquear uma melodia")
                                .font(.system(size: 16))
                                .bold()
                                .foregroundColor(Color("TitleHistory"))
                                .multilineTextAlignment(.center)

                            Text("\(matchedCards.count/2)/\(cardValues.count)")
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
                                                .resizable()
                                                .frame(width: CGFloat(width), height: CGFloat(height))
                                                .foregroundColor(.red)
                                        }
                                        VStack {
                                            Image("Chocalho")
                                                .resizable()
                                                .frame(width: CGFloat(width), height: CGFloat(height))
                                                .foregroundColor(.white)
                                        }
                                        VStack {
                                            Image("Saxofone")
                                                .resizable()
                                                .frame(width: CGFloat(width), height: CGFloat(height))
                                                .foregroundColor(.white)
                                        }
                                        VStack {
                                            Image("Violao")
                                                .resizable()
                                                .frame(width: CGFloat(width), height: CGFloat(height))
                                                .foregroundColor(.white)
                                        }
                                        VStack {
                                            Image("Piano")
                                                .resizable()
                                                .frame(width: CGFloat(width), height: CGFloat(height))
                                                .foregroundColor(.white)
                                        }
                                        VStack {
                                            Image("Flauta")
                                                .resizable()
                                                .frame(width: CGFloat(width), height: CGFloat(height))
                                                .foregroundColor(.white)
                                        }
                                    }
                                }

                            }
                            .padding(.init(top: 0, leading: 0, bottom: 20, trailing: 0))

                            LazyVGrid(columns: threeColumnGrid, spacing: 10) {
                                ForEach(cards) { card in
                                    CardView(card: card,
                                             matchedCards: $matchedCards,
                                             userChoices: $userChoices
                                    )
                                }
                            }
//                            VStack {
//                                Text("Match these cards to win: ")
//                                    .font(.system(size: 16))
//                                    .padding()
//                                LazyVGrid(columns: sixColumnGrid, spacing: 5) {
//                                    ForEach(cardValues, id: \.self) { cardValue in
//                                        if !matchedCards.contains(where: {$0.text == cardValue}) {
//                                            Image(cardValue)
//                                                .font(.system(size: 50))
//                                        }
//                                    }
//                                }
//                            }
                        }
                        .padding()
                    }
                    .ignoresSafeArea()

                    NavigationLink(destination: HistoryView().navigationBarBackButtonHidden(true), isActive: $showingHistoryView) {}
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
