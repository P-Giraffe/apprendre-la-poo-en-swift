//
//  Fighter.swift
//  App_Console
//
//  Created by Maxime Britto on 01/09/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Fighter {
    private var health:Int = 100
    private let _strength:Int
    
    init(strength:Int) {
        self._strength = strength
    }
    
    var strength: Int { _strength }
    var isAlive: Bool { health > 0 }
    
    func displayYourData() {
        print("Bot :\nSanté - \(health)% \nForce - \(strength)")
    }
    
    func receiveHit(hitStrength:Int) {
        health = health - min(hitStrength, health)
    }
    
    func rest() {
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
