//
//  OrchestraView.swift
//  Challenge05
//
//  Created by Anna Alicia Milani on 11/11/22.
//

import SwiftUI

struct OrchestraView: View {
    @State var currentProgress: CGFloat = 0.0
    var body: some View {
        ZStack {
            Color("BackgroundColor1").ignoresSafeArea()
            Image("BarataPadrao")
                .resizable()

            VStack(spacing: 20) {
                Text("LoreMusic")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .foregroundColor(Color("TextColorNames"))

                Image("BarataOrquestra")
                    .frame(width: 358, height: 334)
                    .background(Color("Primaria3"))
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))

                HStack {
                    Text("a Barata diz que tem")
                        .font(.custom("RubikBubbles-Regular", size: 24))
                        .foregroundColor(Color("Primaria1"))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 0))

                    Button(action: {
                    }, label: {
                        Image(systemName: "hand.thumbsup.circle")
                            .font(.system(size: 35))
                            .foregroundColor(Color("Primaria1"))
                            .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 20))
                    })
                }

                Text("LoreMusic")
                    .font(.system(size: 16))
                    .foregroundColor(Color("TextColorNames"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 0))

                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 350, height: 10)
                        .foregroundColor(Color.black.opacity(0.1))

                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: currentProgress * 3.5, height: 10)
                        .foregroundColor(Color("Destaque1"))
                }

                VStack {
                    Button(action: {self.startLoading()}, label: {
                        Image(systemName: "play.circle.fill")
                            .font(.system(size: 83))
                            .foregroundColor(Color("Primaria1"))
                    })
                    Text("Tocar")
                        .font(.system(size: 12))
                        .foregroundColor(Color("TextColorNames"))
                }
            }
        }
    }

    func startLoading() {
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation() {
                self.currentProgress += 1
                if self.currentProgress >= 100 {
                    timer.invalidate()
                }
            }
        }
    }
}

struct OrquestraView_Previews: PreviewProvider {
    static var previews: some View {
        OrchestraView()
    }
}
