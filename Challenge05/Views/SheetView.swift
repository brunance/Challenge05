//
//  sheetview.swift
//  Challenge05
//
//  Created by Ruan Eleutério  on 08/11/22.
//

import Foundation
import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel()
    var historyCount: HistoryModel

    var body: some View {
        ZStack {
            Color("BackSheet").ignoresSafeArea()
            VStack {
                VStack {
                    Image("\(historyCount.name)Modal")
                        .padding(.init(top: 0, leading: 130.63, bottom: 4, trailing: 130.21))

                    VStack {
                        ForEach(0...historyCount.titleList.count - 1, id: \.self) { num in
                            Text(historyCount.titleList[num])
                                .font(.custom("RubikBubbles-Regular", size: CGFloat(historyCount.sizeTitleList[num])))
                                .foregroundColor(Color("TitleSheet"))
                                .bold()
                        }
                    }

                    Text("30s | Música, Instrumental")
                        .font(.system(size: 12))
                        .foregroundColor(Color("TitleHistory"))
                        .padding(.init(top: 0, leading: 103, bottom: 50, trailing: 101))

                    Text(historyCount.description)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .font(.system(size: 16))
                        .foregroundColor(Color("TitleSheet"))
                        .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))

                    Text("INSTRUMENTOS DISPONÍVEIS")
                        .font(.custom("RubikBubbles-Regular", size: 16))
                        .foregroundColor(Color("TitleInstrumentos"))
                        .bold()
                        .padding(.init(top: 50, leading: 16, bottom: 0, trailing: 16))

                    HStack {
                        VStack {
                            Image("Pandeiro")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                            Text("Pandeiro")
                                .font(.system(size: 12))
                                .foregroundColor(Color("CombinarText"))
                        }
                        VStack {
                            Image("Chocalho")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                            Text("Chocalho")
                                .font(.system(size: 12))
                                .foregroundColor(Color("CombinarText"))
                                .padding(.init(top: 0, leading: -20, bottom: 0, trailing: -20))
                        }
                        .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                        VStack {
                            Image("Flauta")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                            Text("Flauta")
                                .font(.system(size: 12))
                                .foregroundColor(Color("CombinarText"))
                        }
                        VStack {
                            Image("Saxofone")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                            Text("Saxofone")
                                .font(.system(size: 12))
                                .foregroundColor(Color("CombinarText"))
                        }
                        VStack {
                            Image("Violao")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                            Text("Violão")
                                .font(.system(size: 12))
                                .foregroundColor(Color("CombinarText"))
                        }
                        VStack {
                            Image("Piano")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                            Text("Piano")
                                .font(.system(size: 12))
                                .foregroundColor(Color("CombinarText"))
                        }
                        .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 0))
                    }
                    .padding(.init(top: 16, leading: 0, bottom: 5, trailing: 0))
                }
                .padding(.init(top: 0, leading: 16, bottom: 70, trailing: 16))
            }
        }
        .ignoresSafeArea()
    }
}
