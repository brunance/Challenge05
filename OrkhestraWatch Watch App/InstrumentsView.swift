//
//  InstrumentsView.swift
//  orkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 16/11/22.
//
import SwiftUI

struct InstrumentsView: View {
    
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView{
            VStack {
                List{
                    ForEach(instrumentsList, id: \.self) { instrument in
                        VStack(alignment: .center, spacing: 5) {
                            Image(instrument.image)
                                .resizable()
                                .frame(width: 35, height: 35)
                                .padding(.top, 5)
                            Text(instrument.name)
                                .bold()
                                .padding(.top, 5)
                                .font(.system(size: 12))
                            Button(action: {
                                hvm.instrumentId = instrument.id
                                print(instrument.name)
                                isShowingDetailView = true
                            }, label: {})
                            NavigationLink(destination: ChallengeWatchView(), isActive: $isShowingDetailView){
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
        .navigationBarTitle(historyList[hvm.historyId].navTitle)
    }
}

