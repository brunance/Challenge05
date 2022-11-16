//
//  CountDownView.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 10/11/22.
//

import SwiftUI

struct CountDownView: View {
    @State private var isShowingDetailView = false
    @State var countDownTimer = 5
    @State var timerRunning = true
    @State var scale: CGFloat = 1
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared

    var body: some View {

        let currentHistory = historyList[hvm.historyCount]

        NavigationView {
            ZStack {
                Color("Primaria1").ignoresSafeArea()
                Image("\(currentHistory.name)Padrao")
                    .resizable()
                VStack {
                    ZStack {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 200))
                            .foregroundColor(Color("CircleCount"))
                            .scaleEffect(scale)
                            .opacity(Double(2 - scale))
                            .onAppear {
                                let baseAnimation = Animation.easeInOut(duration: 0.9)
                                let repeated = baseAnimation.repeatForever(autoreverses: false)
                                withAnimation(repeated) {
                                    scale += 1
                                }
                            }
                        Text("\(countDownTimer)")
                            .onReceive(timer) { _ in
                                if countDownTimer > 0 && timerRunning {
                                    playSound(sound: "countdown", type: "wav")
                                    countDownTimer -= 1
                                } else {
//                                    isShowingDetailView = true
                                    timerRunning = false
                                }
                            }
                            .font(.custom("RubikBubbles-Regular", size: 100))
                            .foregroundColor(Color("CombinarText"))
                            .frame(width: 200, height: 200)
                            .background(Color("CircleCount"))
                            .clipShape(Circle())

                        NavigationLink(destination: OrchestraView(), isActive: $isShowingDetailView) {}
                            .isDetailLink(false)
                    }
                }
            }
        }
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountDownView()
    }
}
