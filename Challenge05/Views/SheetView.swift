//
//  sheetview.swift
//  Challenge05
//
//  Created by Ruan Eleutério  on 08/11/22.
//

import Foundation
import SwiftUI

struct SheetView: View {
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel()
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        ZStack{
            Color(.lightGray)
            VStack{
                if(hvm.historyCount == "A Dona aranha"){
                    Text(hvm.historyCount)
                        .bold()
                        .lineLimit(1)
                        .font(.system(size: 40))
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    
                    Text("aaaaaaaaaaaaaaaaaaaaaaaaaa")
                        .font(.system(size: 40))
                    
                }
                
                if(hvm.historyCount == "Os três porquinhos"){
                    Text(hvm.historyCount)
                        .bold()
                        .lineLimit(1)
                        .font(.system(size: 40))
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    
                    
                    Text("bbbbbbbbbbbbbbbbbbbbbb")
                        .font(.system(size: 40))
                        .padding()
                    
                }
                
                if(hvm.historyCount == "O cravo e a rosa"){
                    Text(hvm.historyCount)
                        .bold()
                        .lineLimit(1)
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                    
                    Text("bbbbbbbbbbbbbbb")
                        .font(.system(size: 40))
                        .font(.title)
                        .padding()
                    
                }
                
                
            }
        }
        .ignoresSafeArea()
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
