//
//  Detail.swift
//  Game
//
//  Created by Maxim Granchenko on 29.05.2020.
//  Copyright © 2020 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct Detail: View {
    
    var data: Player
    @Environment(\.presentationMode) var present
    
    var body: some View {
        
        VStack {
            ZStack {
                HStack {
                    Button(action: {
                        self.present.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.white)
                        
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "circle.grid.2x2.fill")
                            .font(.title)
                            .foregroundColor(.white)
                        
                    }
                }
                
                Text("Overview")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .padding()
            
            Image(self.data.image)
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height / 2)
                .background(Color.white.opacity(0.2))
                .cornerRadius(30)
            
            Text(self.data.name)
                .fontWeight(.bold)
                .font(.system(size: 55))
                .foregroundColor(.white)
                .padding(.top)
            
            Text("Super smash bross ultimate cillagers from the animal crossing series. This troops fight most effectively in large group.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing])
            
            HStack(spacing: 20){
                Button(action: {
                    
                }) {
                    Text("Add Favourite")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: (UIScreen.main.bounds.width / 2) - 30)
                        .background(Capsule().stroke(Color.white, lineWidth: 2))
                }
                
                Button(action: {
                    
                }) {
                    Text("Play Now")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: (UIScreen.main.bounds.width / 2) - 30)
                        .background(Color("Color4"))
                        .clipShape(Capsule())
                }
            }
            .padding(.top, 30)
            
            Spacer()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("Color2"), Color("Color3")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        )
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(data: Player(id: 0, powers: [0.2, 0.5, 0.9], image: "Player3", name: "Bomb Raider", color: Color("Color")))
    }
}
