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
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared

    var body: some View {
        let currentHistory = historyList[hvm.historyCount]

        ZStack {
            Color("BackSheet").ignoresSafeArea()
            VStack {
                VStack {
                    Image("\(currentHistory.name)Modal")
                        .padding(.init(top: 0, leading: 130.63, bottom: 4, trailing: 130.21))

                    VStack {
                        ForEach(0...currentHistory.titleList.count - 1, id: \.self) { num in
                            Text(currentHistory.titleList[num])
                                .font(.custom("RubikBubbles-Regular", size: CGFloat(currentHistory.sizeTitleList[num])))
                                .foregroundColor(Color("TitleSheet"))
                                .bold()
                        }
                    }

                    Text("30s | Música, Instrumental")
                        .font(.system(size: 12))
                        .foregroundColor(Color("TitleHistory"))
                        .padding(.init(top: 0, leading: 103, bottom: 50, trailing: 101))

                    Text(currentHistory.description)
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

                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8, style: .continuous)
                                .foregroundColor(Color("TitleHistory"))
                                .frame(width: 360, height: 60)

                            HStack {
                                VStack {
                                    Image("Pandeiro")
//                                        .font(.system(size: 40))
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                    Text("Pandeiro")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("CombinarText"))
                                        .bold()
                                }

                                VStack {
                                    Image("Chocalho")
//                                        .font(.system(size: 40))
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                    Text("Chocalho")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("CombinarText"))
                                        .padding(.init(top: 0, leading: -20, bottom: 0, trailing: -20))
                                        .bold()
                                }
                                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))

                                VStack {
                                    Image("Flauta")
//                                        .font(.system(size: 40))
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                    Text("Flauta")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("CombinarText"))
                                        .bold()
                                }

                                VStack {
                                    Image("Saxofone")
//                                        .font(.system(size: 40))
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                    Text("Saxofone")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("CombinarText"))
                                        .bold()
                                }

                                VStack {
                                    Image("Violao")
//                                        .font(.system(size: 40))
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                    Text("Violão")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("CombinarText"))
                                        .bold()
                                }

                                VStack {
                                    Image("Piano")
//                                        .font(.system(size: 40))
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                    Text("Piano")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("CombinarText"))
                                        .bold()
                                }
                                .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 0))
                            }
                            .padding(.init(top: 16, leading: 0, bottom: 5, trailing: 0))
                        }
                    }
                }
                .padding(.init(top: 0, leading: 16, bottom: 70, trailing: 16))
            }
        }
        .ignoresSafeArea()
    }
}
