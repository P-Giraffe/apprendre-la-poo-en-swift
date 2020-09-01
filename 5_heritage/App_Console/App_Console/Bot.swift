//
//  Bot.swift
//  App_Console
//
//  Created by Maxime Britto on 01/09/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation
class Bot : Combatant {
    var type:String
    
    init(type:String) {
        self.type = type
    }
    
    func attaquer(joueur:Joueur) {
        print("Bot attaque le joueur " + joueur.pseudo)
    }
}
