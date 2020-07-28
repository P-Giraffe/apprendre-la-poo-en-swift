//
//  Player.swift
//  App_Console
//
//  Created by Maxime Britto on 20/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation
class Player {
    var nickname:String = ""
    var strength:Int = 2
    var health:Int = 100
    
    var isAlive: Bool { health > 0 }
    
    func displayYourData() {
        print("\(nickname) :\nSanté - \(health)% \nForce - \(strength)")
    }
    
    func attack(bot:Bot) {
        print("\(self.nickname), appuyez sur 'Entrée' pour lancer les dés")
        _ = Utilisateur.saisirTexte()
        let dicesValue = rollDices(username: self.nickname)
        let hitStrength = dicesValue * strength
        bot.health = bot.health - hitStrength
        print("\(self.nickname) assène un coup sur le bot avec une force de \(hitStrength)")
    }
    
    func didWin(against bot:Bot) {
        self.strength = self.strength + bot.strength
        raiseHealth(factor: 1.7)
    }
    
    func raiseHealth(factor:Double) {
        guard factor > 1 else {
            return
        }
        let newHealth = Int( Double(self.health) * factor )
        self.health = min(newHealth, 100)
    }

}
