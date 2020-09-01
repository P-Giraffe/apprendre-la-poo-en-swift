//
//  WeaponListManager.swift
//  App_Console
//
//  Created by Maxime Britto on 27/08/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class WeaponListManager {
    private let weaponList:[Weapon] = [
        Weapon(name: "Fusil à pompe", power: 2, accuracy: 0.75),
        Weapon(name: "Lance-roquettes", power: 3, accuracy: 0.65),
        Weapon(name: "Grenade à fragmentation", power: 3, accuracy: 0.70),
        Weapon(name: "Bombe banane", power: 7, accuracy: 0.55),
        Weapon(name: "Mouton", power: 8, accuracy: 0.45)
    ]
    private var nextWeaponIndex = 0
    
    func getNextWeaponToLoot() -> Weapon? {
        guard nextWeaponIndex < weaponList.count else { return nil }
        
        let nextWeapon = weaponList[nextWeaponIndex]
        nextWeaponIndex += 1
        return nextWeapon
    }
}
