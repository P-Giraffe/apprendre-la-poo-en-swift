//
//  Bot.swift
//  App_Console
//
//  Created by Maxime Britto on 16/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Bot : Fighter {
    override var description:String {
        return "Bot\n" + super.description
    }
    
    func attack(player:Player) {
        let dicesValue = rollDices(username: "Bot")
        let hitStrength = dicesValue * strength
        player.receiveHit(hitStrength: hitStrength)
        print("Le Bot vous assène un coup avec une force de \(hitStrength)")
    }
}
