//
//  ContentView.swift
//  Challenge05
//
//  Created by Bruno França do Prado on 07/11/22.
//
import Foundation
import SwiftUI

struct HistoryView: View {
    @State private var showingSheet = false
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared

    let columns = [
        GridItem(.flexible())
    ]

    private let history = ["a dona Aranha", "a Borboleta", "a Barata diz que tem"]
    private let backgroundImage = ["Aranha", "Borboleta", "Barata"]

    var body: some View {
        ZStack {
            Color("BackgroundColor1").ignoresSafeArea()
            VStack {
                TabView {
                    ForEach(0...history.count - 1, id: \.self) { item  in
                        ZStack {
                            Color("BackgroundColor1")

                            if history[item] == "a dona Aranha" {
                                Image("\(backgroundImage[item])Padrao")
                                    .resizable()
                                Image("\(backgroundImage[item])Card")
                                    .resizable()
                                    .padding(.init(top: 115, leading: 3, bottom: 369.6, trailing: 2.5))
                                Image("\(backgroundImage[item])Moldura")
                                    .resizable()
                                Button(action: {
                                    hvm.historyCount = history[item]
                                    showingSheet.toggle()
                                }, label: {
                                    Image(systemName: "questionmark.circle.fill")
                                        .font(.system(size: 43))
                                        .foregroundColor(Color("BackgroundColor1"))
                                        .padding(.init(top: 77, leading: 331, bottom: 724, trailing: 16))
                                })
                                .sheet(isPresented: $showingSheet) {
                                    SheetView()
                                }

                                Image(systemName: "questionmark.circle")
                                    .font(.system(size: 43))
                                // swiftlint:disable:next line_length
                                    .foregroundStyle(Color("TextColorNames"), Color("TextColorNames"), Color("BackgroundColor1"))
                                    .padding(.init(top: 77, leading: 331, bottom: 724, trailing: 16))

                                VStack {
                                    Text("a dona")
                                        .font(.custom("RubikBubbles-Regular", size: 32))
                                        .foregroundColor(Color("TextColorNames"))
                                    Text("Aranha")
                                        .font(.custom("RubikBubbles-Regular", size: 48))
                                        .foregroundColor(Color("TextColorNames"))
                                }
                                .padding(.init(top: 477, leading: 102, bottom: 280, trailing: 102))

                                VStack {
                                    Text("30s | Música, Instrumental")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("TextColorNames"))
                                }
                                .padding(.init(top: 568, leading: 121, bottom: 258, trailing: 119))

                                VStack {
                                    Button(action: {}, label: {
                                        HStack {
                                            Image(systemName: "play.fill")
                                                .padding(.init(top: 8, leading: 85.5, bottom: 8, trailing: 0))
                                            Text("COMBINAR")
                                                .padding(.init(top: 8, leading: 0, bottom: 8, trailing: 85.5))
                                                .font(.system(size: 16))
                                                .bold()
                                        }
                                        .foregroundColor(Color("BackgroundColor1"))
                                    })
                                    .frame(width: 296, height: 40)
                                    .background(Color(.white))
                                    .cornerRadius(8)
                                    .ignoresSafeArea()
                                }
                                .padding(.init(top: 673, leading: 47, bottom: 131, trailing: 47))
                            }

                            if history[item] == "a Borboleta" {

                                Image("\(backgroundImage[item])Padrao")
                                    .resizable()
                                Image("\(backgroundImage[item])Card")
                                    .resizable()
                                    .padding(.init(top: 115, leading: 3, bottom: 369.6, trailing: 2.5))
                                Image("\(backgroundImage[item])Moldura")
                                    .resizable()

                                Button(action: {
                                    hvm.historyCount = history[item]
                                    showingSheet.toggle()
                                }, label: {
                                    Image(systemName: "questionmark.circle.fill")
                                        .font(.system(size: 43))
                                        .foregroundColor(Color("BackgroundColor1"))
                                        .padding(.init(top: 77, leading: 331, bottom: 724, trailing: 16))
                                })
                                .sheet(isPresented: $showingSheet) {
                                    SheetView()
                                }
                                Image(systemName: "questionmark.circle")
                                    .font(.system(size: 43))
                                    .foregroundColor(Color("TextColorNames"))
                                    .padding(.init(top: 77, leading: 331, bottom: 724, trailing: 16))
                                VStack {
                                    Text("a")
                                        .font(.custom("RubikBubbles-Regular", size: 32))
                                        .foregroundColor(Color("TextColorNames"))
                                    Text("Borboleta")
                                        .font(.custom("RubikBubbles-Regular", size: 48))
                                        .foregroundColor(Color("TextColorNames"))
                                }
                                .padding(.init(top: 477, leading: 67, bottom: 280, trailing: 68))

                                VStack {
                                    Text("30s | Música, Instrumental")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("TextColorNames"))
                                }
                                .padding(.init(top: 568, leading: 121, bottom: 258, trailing: 119))

                                VStack {
                                    Button(action: {
                                    }, label: {
                                        HStack {
                                            Image(systemName: "play.fill")
                                                .padding(.init(top: 8, leading: 85.5, bottom: 8, trailing: 0))
                                            Text("COMBINAR")
                                                .padding(.init(top: 8, leading: 0, bottom: 8, trailing: 85.5))
                                                .font(.system(size: 16))
                                                .bold()
                                        }
                                        .foregroundColor(Color("BackgroundColor1"))
                                    })
                                    .frame(width: 296, height: 40)
                                    .background(Color(.white))
                                    .cornerRadius(8)
                                    .ignoresSafeArea()
                                }
                                .padding(.init(top: 673, leading: 47, bottom: 131, trailing: 47))
                            }

                            if history[item] == "a Barata diz que tem" {
                                Image("\(backgroundImage[item])Padrao")
                                    .resizable()
                                Image("\(backgroundImage[item])Card")
                                    .resizable()
                                    .padding(.init(top: 115, leading: 3, bottom: 369.6, trailing: 2.5))
                                Image("\(backgroundImage[item])Moldura")
                                    .resizable()
                                Button(action: {
                                    hvm.historyCount = history[item]
                                    showingSheet.toggle()
                                }, label: {
                                    Image(systemName: "questionmark.circle.fill")
                                        .font(.system(size: 43))
                                        .foregroundColor(Color("BackgroundColor1"))
                                        .padding(.init(top: 77, leading: 331, bottom: 724, trailing: 16))
                                })
                                .sheet(isPresented: $showingSheet) {
                                    SheetView()
                                }
                                Image(systemName: "questionmark.circle")
                                    .font(.system(size: 43))
                                    .foregroundColor(Color("TextColorNames"))
                                    .padding(.init(top: 77, leading: 331, bottom: 724, trailing: 16))

                                VStack {
                                    Text("a")
                                        .font(.custom("RubikBubbles-Regular", size: 32))
                                        .foregroundColor(Color("TextColorNames"))
                                    Text("Barata")
                                        .font(.custom("RubikBubbles-Regular", size: 48))
                                        .foregroundColor(Color("TextColorNames"))
                                    Text("diz que tem")
                                        .font(.custom("RubikBubbles-Regular", size: 32))
                                        .foregroundColor(Color("TextColorNames"))

                                }
                                .padding(.init(top: 477, leading: 99, bottom: 246, trailing: 98))

                                VStack {
                                    Text("30s | Música, Instrumental")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("TextColorNames"))
                                }
                                .padding(.init(top: 602, leading: 124, bottom: 224, trailing: 116))

                                VStack {
                                    Button(action: {}, label: {
                                        HStack {
                                            Image(systemName: "play.fill")
                                                .padding(.init(top: 8, leading: 85.5, bottom: 8, trailing: 0))
                                            Text("COMBINAR")
                                                .padding(.init(top: 8, leading: 0, bottom: 8, trailing: 85.5))
                                                .font(.system(size: 16))
                                                .bold()
                                        }
                                        .foregroundColor(Color("BackgroundColor1"))
                                    })
                                    .frame(width: 296, height: 40)
                                    .background(Color(.white))
                                    .cornerRadius(8)
                                    .ignoresSafeArea()
                                }
                                .padding(.init(top: 673, leading: 47, bottom: 131, trailing: 47))
                            }
                        }
                        .ignoresSafeArea()
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .ignoresSafeArea()
            }
        }
        .ignoresSafeArea()
    }
}
struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
