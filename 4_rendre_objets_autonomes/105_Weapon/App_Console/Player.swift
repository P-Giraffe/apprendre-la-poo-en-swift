//
//  Player.swift
//  App_Console
//
//  Created by Maxime Britto on 20/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation
class Player {
    private let nickname:String
    private var _strength:Int = 2
    private var health:Int = 100
    private var weapon:Weapon = Weapon(name: "Batte de Baseball")
    
    var strength: Int { _strength }
    var isAlive: Bool { health > 0 }
    
    init(nickname:String) {
        self.nickname = nickname
    }
    
    func displayYourData() {
        print("\(nickname) :\nSanté - \(health)% \nForce - \(_strength)")
    }
    
    func attack(bot:Bot) {
        var userChoice:Int = 1
        if health < 40 {
            userChoice = Utilisateur.choisirOptionMenu(message: "\(self.nickname), que souhaitez-vous faire ?\n1 - Attaquer\n2 - Se reposer pour récupérer de la santé", max: 2)
        } else {
            print("\(self.nickname), appuez sur entrée pour attaquer")
            _ = Utilisateur.saisirTexte()
        }
        if userChoice == 1 {
            let dicesValue = rollDices(username: self.nickname)
            let hitStrength = dicesValue * (_strength + weapon.power)
            if Double.random(in: 0.0...1.0) <= weapon.accuracy {
                bot.receiveHit(hitStrength: hitStrength)
                print("\(self.nickname) assène un coup sur le bot avec une force de \(hitStrength)")
            } else {
                print("\(self.nickname) a tiré sur le bot avec une force de \(hitStrength), mais a manqué sa cible")
            }
        } else {
            rest()
        }
    }
    
    func rest() {
        raiseHealth(factor: 1.7)
    }
    
    func didWin(against bot:Bot) {
        self._strength = self._strength + bot.strength
        rest()
    }
    
    func raiseHealth(factor:Double) {
        guard factor > 1 else {
            return
        }
        let newHealth = Int( Double(self.health) * factor )
        self.health = min(newHealth, 100)
    }
    
    func receiveHit(hitStrength:Int) {
        health = health - min(hitStrength, health)
    }
    
}
