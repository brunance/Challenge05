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
    @State private var showingCountDown = false

    @State var history = createHistoryList()

    let columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView() {
            ZStack {
                Color("Primaria1").ignoresSafeArea()
                VStack {
                    TabView {
                        ForEach(history, id: \.self) { item in
                            ZStack {
                                Color("Primaria1")
                                Image("\(item.name)Padrao")
                                    .resizable()
                                Image("\(item.name)Card")
                                    .resizable()
                                    .padding(.init(top: 115, leading: 3, bottom: 369.6, trailing: 2.5))
                                Image("\(item.name)Moldura")
                                    .resizable()
                                    .padding(.init(top: -7, leading: 0, bottom: 0, trailing: 0))

                                Button(action: {
                                    showingSheet.toggle()
                                }, label: {
                                    Image(systemName: "questionmark.circle.fill")
                                        .font(.system(size: 43))
                                        .foregroundColor(Color("BackQuestion"))
                                        .padding(.init(top: 77, leading: 331, bottom: 724, trailing: 16))
                                })
                                .sheet(isPresented: $showingSheet) {
                                    SheetView(history: item)
                                }

                                Image(systemName: "questionmark.circle")
                                    .font(.system(size: 43))
                                    .foregroundStyle(Color("LightQuestion"))
                                    .padding(.init(top: 77, leading: 331, bottom: 724, trailing: 16))
                                VStack {
                                    ForEach(0...item.titleList.count - 1, id: \.self) { num in

                                        Text(item.titleList[num])
                                            // swiftlint:disable:next line_length
                                            .font(.custom("RubikBubbles-Regular", size: CGFloat(item.sizeTitleList[num])))
                                            .foregroundColor(Color("TitleHistory"))
                                    }

                                }
                                .padding(.init(top: 477, leading: 102, bottom: 280, trailing: 102))
                                VStack {
                                    Text("30s | Música, Instrumental")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("TitleHistory"))
                                }
                                .padding(.init(top: 568, leading: 121, bottom: 258, trailing: 119))
                                VStack {
                                    Button(action: {
                                        showingCountDown.toggle()
                                    }, label: {
                                        HStack {
                                            Image(systemName: "play.fill")
                                                .padding(.init(top: 8, leading: 85.5, bottom: 8, trailing: 0))
                                            Text("COMBINAR")
                                                .padding(.init(top: 8, leading: 0, bottom: 8, trailing: 85.5))
                                                .font(.system(size: 16))
                                                .bold()
                                        }
                                        .foregroundColor(Color("CombinarText"))
                                    })
                                    .frame(width: 296, height: 40)
                                    .background(Color("TitleHistory"))
                                    .cornerRadius(8)
                                    .ignoresSafeArea()
                                }
                                .padding(.init(top: 673, leading: 47, bottom: 131, trailing: 47))

                                NavigationLink(destination: CountDownView(), isActive: $showingCountDown) {}
                                    .isDetailLink(false)
                            }
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .ignoresSafeArea()
                    .ignoresSafeArea()
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
