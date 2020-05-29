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
            
            Spacer()
        }
    }
}
