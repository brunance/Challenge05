//
//  ContentView.swift
//  Challenge05
//
//  Created by Bruno França do Prado on 07/11/22.
//

import SwiftUI

struct HistoryView: View {
    let columns = [
        GridItem(.flexible())
    ]
    
    let history = ["Dona aranha","Os três porquinhos","O cravo e a rosa"]
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: columns) {
                ForEach(0...history.count - 1, id: \.self) { item  in
                    Button{
                        
                    }label: {
                        Text(history[item])
                    }
                    .foregroundColor(.white)
                    .frame(width: 200, height: 1600)
                    .background(Color(.black))
                    
                }
            }
        }
    }
}
struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
