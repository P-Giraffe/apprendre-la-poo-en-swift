//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

let j1 = Joueur(pseudo: "Ian")
j1.force = 23
j1.recevoirCoup(forceDuCoup: 10)
print("Sante : \(j1.sante)")

