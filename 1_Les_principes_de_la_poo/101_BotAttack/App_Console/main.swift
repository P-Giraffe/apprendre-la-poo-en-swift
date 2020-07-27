//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func launchGame() {
    let t1000 = Bot()
    
    print("Entrez votre prénom : ")
    let nickname:String
    nickname = Utilisateur.saisirTexte()
    
    var counter = 0
    while t1000.health > 0 {
        counter += 1
        print("\(nickname), appuyez sur 'Entrée' pour lancer les dés")
        _ = Utilisateur.saisirTexte()
        let dicesValue = rollDices(username: nickname)
        t1000.health = t1000.health - dicesValue
        print("\(nickname) assène un coup sur le bot avec une force de \(dicesValue)")
        print("Santé du Bot \(t1000.health)%")
        print("Fin du tour \(counter)")
        print()
    }
}
launchGame()

func rollDices(username:String) -> Int {
    let dicesValue:Int = Int.random(in: 1...6) + Int.random(in: 1...6)
    print("\(username) a lancé les dés et a obtenu \(dicesValue)")
    return dicesValue
}

