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

                    Text("\(countDownTimer)")
                        .onReceive(timer) { _ in
                            if countDownTimer > 0 && timerRunning {
                                countDownTimer -= 1
                            } else {
                                timerRunning = false
                            }
                        }
                        .font(.custom("RubikBubbles-Regular", size: 100))
                        .foregroundColor(Color("BackgroundColor1"))
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
