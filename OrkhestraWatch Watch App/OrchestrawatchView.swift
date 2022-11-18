//
//  OrchestrawatchView.swift
//  orkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 18/11/22.
//

import SwiftUI

struct OrchestrawatchView: View {
    @State var progress: Double = 0
    var body: some View {
        VStack {
            Spacer()

            ZStack {
                CircularProgressView(progress: progress)
                Image("Flauta")
                    .resizable()
                    .frame(width: 55, height: 55)
            }
            .frame(width: 100, height: 100)

            Spacer()

            Text("Gire o Pulso")
                .font(.system(size: 20))

//            HStack {
//                Slider(value: $progress, in: 0...1)
//                Button("Reset") {
//                    resetProgress()
//                }
//                .buttonStyle(.borderedProminent)
//            }
        }
    }

    func resetProgress() {
        progress = 0
    }

    struct OrchestrawatchView_Previews: PreviewProvider {
        static var previews: some View {
            OrchestrawatchView()
        }
    }
}
