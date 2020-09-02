//
//  Player.swift
//  App_Console
//
//  Created by Maxime Britto on 20/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation
class Player : Fighter {
    private let nickname:String
    private var weapon:Weapon = Weapon(name: "Batte de Baseball")
    private let weaponListManager = WeaponListManager()
    
    init(nickname:String) {
        self.nickname = nickname
        super.init(strength: 2)
    }
    
    override var description:String {
        return nickname + "\n" + super.description
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
            let hitStrength = dicesValue * (strength + weapon.power)
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
    
    func didWin(against bot:Bot) {
        self.strength = self.strength + bot.strength
        
        if let newWeapon = weaponListManager.getNextWeaponToLoot() {
            let userChoice = Utilisateur.choisirOptionMenu(message: "Le Bot vient de faire tomber une arme (\(newWeapon.description)), que souhaitez-vous faire ?\n1 - Ramasser cette arme\n2 - Continuer avec votre arme", max: 2)
            if userChoice == 1 {
                self.weapon = newWeapon
            }
        }
        rest()
    }
}
