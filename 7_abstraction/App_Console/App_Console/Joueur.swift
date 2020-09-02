//
//  Joueur.swift
//  App_Console
//
//  Created by Maxime Britto on 27/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

protocol MonProtocole {
    func maFonctionObligatoire()
}


class Joueur : Combatant, MonProtocole {
    func maFonctionObligatoire() {
        
    }
    
    override var description: String { return pseudo + " - \(score)" }
    
    var pseudo:String
    var score:Int = 0
    
    init(pseudo:String) {
        self.pseudo = pseudo
        super.init(force: 1)
    }
    
    convenience init(pseudo:String, score:Int) {
        self.init(pseudo:pseudo)
        self.score = score
    }
    
    func attaquer(bot:Bot) {
        print("Vous attaquez le Bot")
    }
    
    override func recevoirCoup(forceDuCoup: Int) {
        super.recevoirCoup(forceDuCoup: forceDuCoup)
        print("Aie!")
    }
}


