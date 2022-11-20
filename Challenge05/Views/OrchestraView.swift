//
//  OrchestraView.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 11/11/22.
//

import SwiftUI

struct OrchestraView: View {

    @State var currentProgress: CGFloat = 0.0
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared
    @State private var showingHistory = false

    var body: some View {

        let currentHistory = historyList[hvm.historyCount]

        NavigationView {
            ZStack {
                Color("CombinarText").ignoresSafeArea()
                Image("\(currentHistory.name)Padrao")
                    .resizable()

                VStack(spacing: 20) {
                    ZStack {
                        Button(action: {
                            showingHistory = true
                        }, label: {
                            ZStack {
                                Image(systemName: "chevron.down.circle.fill")
                                    .frame(alignment: .trailing)
                                    .font(.system(size: 37))
                                    .foregroundStyle(Color("CircleCount"))
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        .padding()

                        Text("Orkhéstra")
                            .fontWeight(.bold)
                            .font(.system(size: 16))
                            .foregroundColor(Color("TitleOrchestra"))
                    }
                    Image("\(currentHistory.name)Orquestra")
                        .frame(width: 358, height: 334)
                        .background(Color("BackImageOrchestra"))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))

                    HStack {
                        Text(currentHistory.title)
                            .font(.custom("RubikBubbles-Regular", size: 24))
                            .foregroundColor(Color("TitleHistory"))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 0))
                    }

                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .frame(width: 350, height: 10)
                            .foregroundColor(Color.black.opacity(0.1))

                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .frame(width: currentProgress * 3.5, height: 10)
                            .foregroundColor(Color("Destaque1"))
                    }

                    VStack {
                        Button(action: {self.startLoading()}, label: {
                            Image(systemName: "play.circle.fill")
                                .font(.system(size: 83))
                                .foregroundColor(Color("PlayButton"))
                        })
                        Text("Tocar")
                            .font(.system(size: 12))
                            .foregroundColor(Color("TitleOrchestra"))
                    }
                }

                NavigationLink(destination: HistoryView().navigationBarBackButtonHidden(true), isActive: $showingHistory) {}
            }
            .ignoresSafeArea()
        }
    }

    func startLoading() {
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation {
                self.currentProgress += 1
                if self.currentProgress >= 100 {
                    timer.invalidate()
                }
            }
        }
    }
}

struct OrquestraView_Previews: PreviewProvider {
    static var previews: some View {
        OrchestraView()
    }
}
