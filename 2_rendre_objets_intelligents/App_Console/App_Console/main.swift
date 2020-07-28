//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

let j1 = Joueur(pseudo: "Poppy", score: 50)
let j2 = Joueur(pseudo: "Ian")
j1.partieGagnée()
j1.partieGagnée(bonus: 120)
print(j1.niveau)
j1.niveau = 3
print(j1.score)


