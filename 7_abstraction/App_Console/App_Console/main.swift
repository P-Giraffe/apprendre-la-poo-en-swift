//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

let combatants:[Combatant] = [
    Bot(type: "Robot", force: 3),
    Joueur(pseudo: "Ian"),
    Joueur(pseudo: "Poppy")
    ]
for combatant in combatants {
    print(combatant)
}
