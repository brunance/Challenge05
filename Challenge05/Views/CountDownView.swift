//
//  CountDownView.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 10/11/22.
//

import SwiftUI

struct CountDownView: View {
    @State var countDownTimer = 5
    @State var timerRunning = true
    @State var scale: CGFloat = 1
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            Color("BackgroundColor1").ignoresSafeArea()
            Image("BarataPadrao")
                .resizable()
            VStack {
                ZStack {
                    Image(systemName: "circle.fill")
                        .font(.system(size: 200))
                        .foregroundColor(Color("TextColorNames"))
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
                                timerRunning = false
                            }
                        }
                        .font(.custom("RubikBubbles-Regular", size: 100))
                        .foregroundColor(Color("BackgroundColor1"))
                        .frame(width: 200, height: 200)
                        .background(Color("TextColorNames"))
                        .clipShape(Circle())
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
