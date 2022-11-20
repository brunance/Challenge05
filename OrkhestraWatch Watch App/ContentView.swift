//
//  ContentView.swift
//  OrkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 16/11/22.
//

import SwiftUI
import CoreMotion

struct ContentView: View {
    let motionManager = CMMotionManager()
    let queue = OperationQueue()
    @State private var hasTimeElapsed = false
    @State var estado = false
    @State var control = true
    @State private var pitch = Double.zero
    @State private var yaw = Double.zero
    @State private var roll = Double.zero
    var body: some View {
        NavigationView {
            VStack {
                Text("Minhas Histórias")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .onTapGesture {
                        playSound(sound: "Piano", type: "mp3")
                    }
                NavigationLink(destination: InstrumentsView()) {
                    HStack{
                        Text("🕷️")
                        Text("a Dona Aranha")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                NavigationLink(destination: InstrumentsView()) {
                    HStack{
                        Text("🦋")
                        Text("a Borboleta")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                NavigationLink(destination: InstrumentsView()) {
                    HStack{
                        Text("🪳")
                        Text("a Barata")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .padding()
            
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
                    playSound(sound: "Piano", type: "mp3")
                    
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
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
