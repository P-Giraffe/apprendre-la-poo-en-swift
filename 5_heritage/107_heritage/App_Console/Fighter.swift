//
//  Fighter.swift
//  App_Console
//
//  Created by Maxime Britto on 01/09/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Fighter {
    private var _health:Int = 100
    private var _strength:Int
    
    init(strength:Int) {
        self._strength = strength
    }
    
    var health: Int { _health }
    var strength: Int {
        get { _strength }
        set { _strength = max(1, newValue) }
    }
    var isAlive: Bool { health > 0 }
    
    func displayYourData() {
        print("Bot :\nSanté - \(health)% \nForce - \(strength)")
    }
    
    func receiveHit(hitStrength:Int) {
        _health = _health - min(hitStrength, _health)
    }
    
    func rest() {
        raiseHealth(factor: 1.7)
    }
    
    func raiseHealth(factor:Double) {
        guard factor > 1 else {
            return
        }
        let newHealth = Int( Double(self.health) * factor )
        self._health = min(newHealth, 100)
    }
}
