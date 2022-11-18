//
//  ContentView.swift
//  OrkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 16/11/22.
//

import SwiftUI

struct ContentView: View {
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
        }
    }
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
