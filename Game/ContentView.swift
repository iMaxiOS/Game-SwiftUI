//
//  ContentView.swift
//  Game
//
//  Created by Maxim Granchenko on 29.05.2020.
//  Copyright © 2020 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {

    var body: some View {
        VStack() {
            HStack {
                Text("Your Player")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
                
                Button(action: {
                    print("tap")
                }) {
                    Image(systemName: "line.horizontal.3.decrease")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 40)
            
            Spacer()
        }
        .background(LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1")]), startPoint: .top, endPoint: .bottom)).edgesIgnoringSafeArea(.all)
    }
}
