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
        VStack {
            Text("\(countDownTimer)")
                .onReceive(timer) { _ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    } else {
                        timerRunning = false
                    }
                }
                .font(.system(size: 80, weight: .bold))
                .opacity(0.80)
        }
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountDownView()
    }
}
