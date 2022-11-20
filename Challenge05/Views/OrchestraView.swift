//
//  OrchestraView.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 11/11/22.
//

import SwiftUI

struct OrchestraView: View {
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared
    @State private var showingHistory = false
    @State private var value: Double = 0.0
    @State private var isEditing: Bool = false
    @EnvironmentObject var audioManager: AudioManager
    
    let timer = Timer
        .publish(every: 0.5, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        let currentHistory = historyList[hvm.historyId]
        
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
                        
                        Text("Orkhéstra")
                            .fontWeight(.bold)
                            .font(.system(size: 16))
                            .foregroundColor(Color("TitleOrchestra"))
                    }
                    Image("\(currentHistory.name)Orquestra")
                        .frame(width: 358, height: 334)
                        .background(Color("BackImageOrchestra"))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    Text(currentHistory.title)
                        .font(.custom("RubikBubbles-Regular", size: 24))
                        .foregroundColor(Color("TitleHistory"))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    if let player = audioManager.player {
                        VStack(spacing: 5) {
                            Slider(value: $value, in: 0...player.duration) { editing in
                                
                                isEditing = editing
                                
                                if !editing {
                                    player.currentTime = value
                                }
                            }
                            .accentColor(.white)
                            HStack {
                                Text(DateComponentsFormatter.positional.string(from: player.currentTime) ?? "0:00")
                                
                                Spacer()
                                
                                Text(DateComponentsFormatter.positional.string(from: player.duration) ?? "0:00")
                                
                            }
                            .foregroundColor(.white)
                        }
                        VStack {
                            Button(action: {
                                audioManager.pauseSound()
                            }, label: {
                                Image(systemName: player.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                                    .font(.system(size: 75))
                                    .foregroundColor(Color("PlayButton"))
                            })
                            Text("Tocar")
                                .font(.system(size: 12))
                                .foregroundColor(Color("TitleOrchestra"))
                        }
                    }
                }
                .padding(20)
                NavigationLink(destination: HistoryView().navigationBarBackButtonHidden(true), isActive: $showingHistory) {}
            }
            .ignoresSafeArea()
            .onAppear {
                audioManager.playSound(sound: currentHistory.name)
            }
            .onReceive(timer) { _ in
                guard let player = audioManager.player, !isEditing else { return }
                value = player.currentTime
            }
        }
    }
}

struct OrquestraView_Previews: PreviewProvider {
    static var previews: some View {
        OrchestraView()
    }
}
