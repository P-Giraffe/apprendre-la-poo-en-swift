//
//  Combatant.swift
//  App_Console
//
//  Created by Maxime Britto on 01/09/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Combatant {
    var force:Int = 1
    var sante:Int = 100
    
    func recevoirCoup(forceDuCoup:Int) {
        self.sante -= min(self.sante, forceDuCoup)
    }
    
    var estEnVie: Bool { sante > 0 }
}
