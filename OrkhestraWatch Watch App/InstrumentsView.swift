//
//  InstrumentsView.swift
//  orkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 16/11/22.
//
import SwiftUI

struct InstrumentsView: View {
    var body: some View {
        VStack {
            Text("Escolha um instrumento para ouvir!")
                .font(.system(size: 14))
                .frame(maxWidth: .infinity, alignment: .center)
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    Text("Oi")
                        .frame(width: 100, height: 100)
                    Text("Olá")
                        .frame(width: 100, height: 100)
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding()
    }
}
