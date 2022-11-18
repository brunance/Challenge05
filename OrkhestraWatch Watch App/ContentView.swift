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
                    .padding(.top, 10)
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)

                NavigationLink(destination: InstrumentsView()) {
                    ZStack{
                        HStack{
                            Image("AranhaWatchOS")
                                .padding(.trailing, 5)
                            Text("a Dona Aranha")
                                .font(.system(size: 13))
                        }
                    }
                }

                NavigationLink(destination: InstrumentsView()) {
                    ZStack{
                        HStack{
                            Image("BorboletaWatchOS")
                                .padding(.trailing, 5)
                            Text("a Borboleta")
                                .font(.system(size: 13))
                        }
                    }
                }

                NavigationLink(destination: InstrumentsView()) {
                    ZStack{
                        HStack{
                            Image("BarataWatchOS")
                                .padding(.trailing, 5)
                            Text("a Barata")
                                .font(.system(size: 13))
                        }
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
