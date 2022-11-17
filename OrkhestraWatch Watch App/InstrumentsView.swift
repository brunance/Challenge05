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
            List{
                VStack(alignment: .center, spacing: 5) {
                    Image("Chocalho").padding(.top, 5)
                    Text("Chocalho").bold().padding(.top, 5)
                    Button("**ESCOLHER**") {
                        print("Begin 1")
                    }
                    .foregroundColor(.red).padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                
                VStack(alignment: .center, spacing: 5) {
                    Image("Flauta").padding(.top, 5)
                    Text("Flauta").bold().padding(.top, 5)
                    Button("**ESCOLHER**") {
                        print("Begin 2")
                    }
                    .foregroundColor(.red).padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                
                VStack(alignment: .center, spacing: 5) {
                    Image("Pandeiro").padding(.top, 5)
                    Text("Pandeiro").bold().padding(.top, 5)
                    Button("**ESCOLHER**") {
                        print("Begin 3")
                    }
                    .foregroundColor(.red).padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                
                VStack(alignment: .center, spacing: 5) {
                    Image("Piano").padding(.top, 5)
                    Text("Piano").bold().padding(.top, 5)
                    Button("**ESCOLHER**") {
                        print("Begin 4")
                    }
                    .foregroundColor(.red).padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                
                VStack(alignment: .center, spacing: 5) {
                    Image("Saxofone").padding(.top, 5)
                    Text("Saxofone").bold().padding(.top, 5)
                    Button("**ESCOLHER**") {
                        print("Begin 5")
                    }
                    .foregroundColor(.red).padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                
                VStack(alignment: .center, spacing: 5) {
                    Image("Violao").padding(.top, 5)
                    Text("Violão").bold().padding(.top, 5)
                    Button("**ESCOLHER**") {
                        print("Begin 6")
                    }
                    .foregroundColor(.red).padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                
            }
            .listStyle(CarouselListStyle())
        }
        .padding()
    }
}
