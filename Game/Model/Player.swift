//
//  Player.swift
//  Game
//
//  Created by Maxim Granchenko on 29.05.2020.
//  Copyright © 2020 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct Player: Identifiable {
    var id: Int
    var powers: [CGFloat]
    var image: String
    var name: String
    var color: Color
}

let data = [
    Player(id: 0, powers: [0.2, 0.5, 0.9], image: "Player3", name: "Bomb Raider", color: Color("Color")),
    Player(id: 1, powers: [0.3, 0.5, 0.6], image: "Player2", name: "Pekka", color: Color("Color1")),
    Player(id: 2, powers: [0.5, 0.4, 0.8], image: "Player1", name: "Barberian", color: Color("Color2"))
]
