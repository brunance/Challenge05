//
//  InstrumentsView.swift
//  orkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 16/11/22.
//
import SwiftUI

struct InstrumentsView: View {
    var body: some View {
        NavigationView{
            VStack {
                List{
                    VStack(alignment: .center, spacing: 5) {
                        Image("Chocalho")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(.top, 5)
                        Text("Chocalho")
                            .bold()
                            .padding(.top, 5)
                            .font(.system(size: 12))
                        NavigationLink(destination: OrchestrawatchView()){
                            Text("**ESCOLHER**")
                                .font(.system(size: 14))
                        }
                        .foregroundColor(.red).padding(.bottom, 5)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
                    .padding()

                    VStack(alignment: .center, spacing: 5) {
                        Image("Flauta")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(.top, 5)
                        Text("Flauta")
                            .bold()
                            .padding(.top, 5)
                            .font(.system(size: 12))
                        NavigationLink(destination: OrchestrawatchView()){
                            Text("**ESCOLHER**")
                                .font(.system(size: 14))
                        }
                        .foregroundColor(.red).padding(.bottom, 5)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
                    .padding()

                    VStack(alignment: .center, spacing: 5) {
                        Image("Pandeiro")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(.top, 5)
                        Text("Pandeiro")
                            .bold()
                            .padding(.top, 5)
                            .font(.system(size: 12))
                        NavigationLink(destination: OrchestrawatchView()){
                            Text("**ESCOLHER**")
                                .font(.system(size: 14))
                        }
                        .foregroundColor(.red).padding(.bottom, 5)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
                    .padding()

                    VStack(alignment: .center, spacing: 5) {
                        Image("Piano")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(.top, 5)
                        Text("Piano")
                            .bold()
                            .padding(.top, 5)
                            .font(.system(size: 12))
                        NavigationLink(destination: OrchestrawatchView()){
                            Text("**ESCOLHER**")
                                .font(.system(size: 14))
                        }
                        .foregroundColor(.red).padding(.bottom, 5)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
                    .padding()

                    VStack(alignment: .center, spacing: 5) {
                        Image("Saxofone")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(.top, 5)
                        Text("Saxofone")
                            .bold()
                            .padding(.top, 5)
                            .font(.system(size: 12))
                        NavigationLink(destination: OrchestrawatchView()){
                            Text("**ESCOLHER**")
                                .font(.system(size: 14))
                        }
                        .foregroundColor(.red).padding(.bottom, 5)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
                    .padding()

                    VStack(alignment: .center, spacing: 5) {
                        Image("Violao")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(.top, 5)
                        Text("Violão")
                            .bold()
                            .padding(.top, 5)
                            .font(.system(size: 12))
                        NavigationLink(destination: OrchestrawatchView()){
                            Text("**ESCOLHER**")
                                .font(.system(size: 14))
                        }
                        .foregroundColor(.red).padding(.bottom, 5)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80, alignment: .center)
                    .padding()
                }
                .listStyle(CarouselListStyle())
            }
            .padding()
        }
    }
}
