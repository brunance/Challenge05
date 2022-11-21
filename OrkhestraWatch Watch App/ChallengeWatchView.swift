//
//  ChallengeWatchView.swift
//  orkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 18/11/22.
//

import SwiftUI
import CoreMotion

struct ChallengeWatchView: View {
    @State var progress: Double = 0
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared
    @State var estado = false
    let motionManager = CMMotionManager()
    let queue = OperationQueue()
    @State var control = true
    @State private var pitch = Double.zero
    @State private var yaw = Double.zero
    @State private var roll = Double.zero
    
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
                
                    Button("Play"){
                        playSound(sound: instrumentsList[hvm.instrumentId].name, type: "mp3")
                        progress += 1/10
                    }
                    Button("Reset") {
                        resetProgress()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }.onAppear {
                self.motionManager.startDeviceMotionUpdates(to: self.queue) { (data: CMDeviceMotion?, error: Error?) in
                    guard let data = data else {
                        print("Error: \(error!)")
                        return
                    }
                    let attitude: CMAttitude = data.attitude
                    
                    if(attitude.pitch >= 0 && attitude.pitch <= 0.2){
                        estado = true
                    }
                    
                    if (attitude.pitch >= 1 && estado == true && control == true) {
                        estado = false
                        playSound(sound: instrumentsList[hvm.instrumentId].name, type: "mp3")
                        progress += 1/10
                        
                    }
                    
                    print("pitch: \(attitude.pitch)")
                    print("yaw: \(attitude.yaw)")
                    print("roll: \(attitude.roll)")
                    
                    if (estado == false) {
                        DispatchQueue.main.async {
                            self.pitch = attitude.pitch
                            self.yaw = attitude.yaw
                            self.roll = attitude.roll
                        }
                    }
                }
            }
            .onDisappear{
                control = false
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
