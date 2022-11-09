//
//  sheetview.swift
//  Challenge05
//
//  Created by Ruan Eleutério  on 08/11/22.
//

import Foundation

import SwiftUI

struct HistoryPlayView: View {
    let columns = [
        GridItem(.flexible())
    ]
    
    let history = ["Dona aranha","Os três porquinhos","O cravo e a rosa"]
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0...history.count - 1, id: \.self) { item  in
                    Button{
                    
                    }label: {
                        Text(history[item])
                    }
                    .foregroundColor(.white)
                    .frame(width: 334, height: 150)
                    .background(Color(.black))
                    
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryPlayView()
    }
}
