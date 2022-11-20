//
//  PlayOrkhestraView.swift
//  orkhestraWatch Watch App
//
//  Created by Bruno França do Prado on 20/11/22.
//

import SwiftUI

struct PlayOrkhestraView: View {
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .frame(width: 74, height: 74)
                Image("Pandeiro")
            }
            Text("A barata diz que tem")
                .font(.system(size: 15))
            Text("Pandeiro Instrumental")
                .font(.system(size: 10))
            HStack{
                Button(action: {}){
                    Image(systemName: "backward.end.fill")
                }
                .buttonStyle(PlainButtonStyle())
                .frame(width: 50)

                Button(action: {}){
                    ZStack{
                        Circle()
                            .frame(width: 56, height: 56)
                            .foregroundColor(Color("Destaque1"))
                        Image(systemName: "play.fill")
                            .font(.system(size: 30))
                    }
                }
                .buttonStyle(PlainButtonStyle())
                .frame(width: 50)

                Button(action: {}){
                    Image(systemName: "forward.end.fill")
                }
                .buttonStyle(PlainButtonStyle())
                .frame(width: 50)
            }
        }
    }
}

struct PlayOrkhestraView_Previews: PreviewProvider {
    static var previews: some View {
        PlayOrkhestraView()
    }
}
