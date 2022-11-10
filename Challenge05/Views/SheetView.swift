//
//  sheetview.swift
//  Challenge05
//
//  Created by Ruan Eleutério  on 08/11/22.
//

import Foundation
import SwiftUI

struct SheetView: View {
    @ObservedObject var hvm: HistoryViewModel = HistoryViewModel.shared
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        ZStack{
            Color("Primaria3")
            VStack{
                if(hvm.historyCount == "A dona Aranha"){
                    VStack{
                        Text("a dona")
                            .font(.custom("RubikBubbles-Regular", size: 32))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                        
                        Text("Aranha")
                            .font(.custom("RubikBubbles-Regular", size: 48))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                        
                        Text("30s | Música, Instrumental")
                            .font(.system(size: 12))
                            .foregroundColor(Color("TextColorNames"))
                        
                        
                        
                            .padding(.init(top: 0, leading: 103, bottom: 50, trailing: 101))
                        
                        
                        Text("A previsão de hoje é de chuva forte, ajude a teimosa dona Aranha a subir pela parede. Nesta dinâmica musical de jogo da memória você deve combinar os pares para desbloquear novos sons e quem sabe a música inteira.")
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .font(.system(size: 16))
                            .foregroundColor(Color("TextColorNames"))
                        
                        Text("INSTRUMENTOS DISPNÍVEIS")
                            .font(.custom("RubikBubbles-Regular", size: 16))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                            .padding(.init(top: 50, leading: 16, bottom: 0, trailing: 16))
                        
                        HStack{
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Violão")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Bateria")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Chocalho")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Flauta")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Gaita")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            
                            
                        }
                        .padding(.init(top: 16, leading: 38, bottom: 0, trailing: 38))
                    }
                    .padding(.init(top: 333, leading: 16, bottom: 50, trailing: 16))
                }
                
                if(hvm.historyCount == "a Borboleta"){
                    VStack{
                        Text("a")
                            .font(.custom("RubikBubbles-Regular", size: 32))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                        
                        Text("Borboleta")
                            .font(.custom("RubikBubbles-Regular", size: 48))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                        
                        Text("30s | Música, Instrumental")
                            .font(.system(size: 12))
                            .foregroundColor(Color("TextColorNames"))
                            .padding(.init(top: 0, leading: 103, bottom: 50, trailing: 101))
                        
                        
                        Text("Olha a borboleta tá na cozinha! vamos ajudá-la a fazer um chocolate para sua madrinha? Nesta dinâmica musical de jogo da memória você deve combinar os pares para desbloquear novos sons e quem sabe a música inteira.")
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .font(.system(size: 16))
                            .foregroundColor(Color("TextColorNames"))
                        
                        Text("INSTRUMENTOS DISPNÍVEIS")
                            .font(.custom("RubikBubbles-Regular", size: 16))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                            .padding(.init(top: 50, leading: 16, bottom: 0, trailing: 16))
                        
                        HStack{
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Violão")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Bateria")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Chocalho")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Flauta")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Gaita")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            
                            
                            
                        }
                        .padding(.init(top: 16, leading: 38, bottom: 0, trailing: 38))
                    }
                    .padding(.init(top: 333, leading: 16, bottom: 50, trailing: 16))
                    
                }
                
                if(hvm.historyCount == "a Barata diz que tem"){
                    VStack{
                        Text("a")
                            .font(.custom("RubikBubbles-Regular", size: 32))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                        
                        Text("Barata")
                            .font(.custom("RubikBubbles-Regular", size: 48))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                        
                        Text("diz que tem")
                            .font(.custom("RubikBubbles-Regular", size: 32))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                        
                        Text("30s | Música, Instrumental")
                            .font(.system(size: 12))
                            .foregroundColor(Color("TextColorNames"))
                        
                        
                        
                            .padding(.init(top: 50, leading: 103, bottom: 0, trailing: 101))
                        
                        
                        Text("Ajude a desmascarar as mentiras da Barata numa dinâmica musical de jogo da memória onde você deve combinar os pares para desbloquear novos sons e quem sabe a música inteira.")
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .font(.system(size: 16))
                            .foregroundColor(Color("TextColorNames"))
                        
                        Text("INSTRUMENTOS DISPNÍVEIS")
                            .font(.custom("RubikBubbles-Regular", size: 16))
                            .foregroundColor(Color("TextColorNames2"))
                            .bold()
                            .padding(.init(top: 16, leading: 16, bottom: 0, trailing: 16))
                        
                        HStack{
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Violão")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Bateria")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Chocalho")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Flauta")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            VStack{
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                Text("Gaita")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("TextColorNames"))
                            }
                            
                            
                        }
                        .padding(.init(top: 16, leading: 38, bottom: 0, trailing: 38))
                    }
                    .padding(.init(top: 333, leading: 16, bottom: 50, trailing: 16))
                    
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
