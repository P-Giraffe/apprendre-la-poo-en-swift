//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func fonctionPrincipale() {
    let j1 = Joueur()
    j1.pseudo = "Ian"
    j1.score = 21
    
    print("\(j1.pseudo), score : \(j1.score)")
    
    var b1 = Bot(nom: "Robot", puissance: 20)
    b1.sante = 10 // -> autorisé tant que b1 est déclaré en tant que var
    //b1.nom = "Super robot" -> interdit car nom est une constante à l'intérieur de Bot
}
fonctionPrincipale()


