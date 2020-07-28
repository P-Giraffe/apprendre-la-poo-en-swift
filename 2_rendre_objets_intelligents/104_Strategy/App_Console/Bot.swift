//
//  Bot.swift
//  App_Console
//
//  Created by Maxime Britto on 16/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Bot {
    let strength:Int
    var health:Int = 100
    
    init(strength:Int) {
        self.strength = strength
    }
    
    func displayYourData() {
        print("Bot :\nSanté - \(health)% \nForce - \(strength)")
    }
    
    func attack(player:Player) {
        let dicesValue = rollDices(username: "Bot")
        let hitStrength = dicesValue * strength
        player.health -= hitStrength
        print("Le Bot vous assène un coup avec une force de \(hitStrength)")
    }
}
