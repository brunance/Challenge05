//
//  ContentView.swift
//  Challenge05
//
//  Created by Bruno França do Prado on 07/11/22.
//
import Foundation
import SwiftUI


struct HistoryView: View {
    @State private var showingSheet = false
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel()
    
    
    let columns = [
        GridItem(.flexible())
    ]

    private let history = ["A Dona aranha","Os três porquinhos","O cravo e a rosa"]
    private let historyTitle = ["A D. spider","Os três porquinhos","O cravo e a rosa"]
    var body: some View {
        ZStack{
            VStack{
                
                TabView{
                    
                    ForEach(history, id: \.self) { item  in
                        ZStack{
                            Color(.lightGray)
                            VStack{
                   
                                Text("Lorem Music")
                                    .font(.custom("RubikBubbles-Regular", size: 30))
                                 
                                    .bold()
                                    .padding(.init(top:-200 , leading: 20, bottom: 100, trailing: 20))
                                
                                Text(item)
                                    .bold()
                                    .lineLimit(1)
                                    .font(.system(size: 40))
                                    .font(.largeTitle)
                                    .foregroundColor(.black)
                                    
                                
                                
                                Text(item)
                                    .bold()
                                Text("História Musical| 3 minutos e 28 segundos")
                                    .bold()
                                HStack{
                                    Image(systemName: "circle")
                                    Image(systemName: "circle")
                                    Image(systemName: "circle")
                                    
                                }
                                
                                .font(.system(size: 45))
                                
                                Button(action: {print(item)}, label: {
                                    Image(systemName: "play.fill")
                                        .foregroundColor(Color(.black))
                                })
                                .buttonStyle(.borderedProminent)
                                
                                
                                
                                Button(action: {
                                    hvm.historyCount = item
                                    showingSheet.toggle()
                                    print(hvm.historyCount)
                                    
                                },label: {
                                    VStack{
                                        Text("Mostrar mais")
                                        Image(systemName: "arrow.down.to.line.alt")
                                    }
                                    .foregroundColor(.black)
                                })
                                
                                .sheet(isPresented: $showingSheet){
                                    SheetView(hvm: hvm.self)
                                }
                                
                                .background(Color(.lightGray))
                                
                                
                            }
                            
                            
                            
                            
                            
                            .background(Color(.lightGray))
                            .ignoresSafeArea()
                            
                            
                            
                        }
                        
                        .ignoresSafeArea()
                        
                        
                    }
                    
                }
                .tabViewStyle(.page(indexDisplayMode:.always))
                .ignoresSafeArea()
                
                
            }
            
            .background(Color(.lightGray))
            .ignoresSafeArea()
            
        }
    }
}
struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
