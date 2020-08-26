//
//  Bot.swift
//  App_Console
//
//  Created by Maxime Britto on 16/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Bot {
    private let _strength:Int
    private var health:Int = 100
    
    init(strength:Int) {
        self._strength = strength
    }
    var strength: Int { _strength }
    var isAlive: Bool { health > 0 }
    
    func displayYourData() {
        print("Bot :\nSanté - \(health)% \nForce - \(strength)")
    }
    
    func attack(player:Player) {
        let dicesValue = rollDices(username: "Bot")
        let hitStrength = dicesValue * strength
        player.receiveHit(hitStrength: hitStrength)
        print("Le Bot vous assène un coup avec une force de \(hitStrength)")
    }
    
    func receiveHit(hitStrength:Int) {
        health = health - min(hitStrength, health)
    }
}
