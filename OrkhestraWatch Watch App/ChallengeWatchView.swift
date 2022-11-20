//
//  ChallengeWatchView.swift
//  orkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 18/11/22.
//

import SwiftUI

struct ChallengeWatchView: View {
    @State var progress: Double = 0
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared

    var body: some View {
        NavigationView {
            VStack {
                Spacer()

                ZStack {
                    CircularProgressView(progress: progress)
                    Image(instrumentsList[hvm.instrumentId].image)
                        .resizable()
                        .frame(width: 55, height: 55)
                }
                .frame(width: 100, height: 100)

                Spacer()

                Text("Gire o Pulso")
                    .font(.system(size: 20))

                HStack {
                    Slider(value: $progress, in: 0...1)
                    Button("Reset") {
                        resetProgress()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
        .navigationBarTitle(instrumentsList[hvm.instrumentId].name)
    }

    func resetProgress() {
        progress = 0
    }

    struct OrchestraWatchView_Previews: PreviewProvider {
        static var previews: some View {
            ChallengeWatchView()
        }
    }
}
