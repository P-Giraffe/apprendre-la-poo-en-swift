//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func launchGame() {
    print("Entrez votre prénom : ")
    let player = Player(nickname: Utilisateur.saisirTexte())
    var botCount = 0
    while player.isAlive {
        let t1000 = Bot(strength: max(1, player.strength-1))
        print("Un Bot approche de votre direction et il vous défie en combat. Il a une force de \(t1000.strength)")
        player.displayYourData()
        var counter = 0
        var isItPlayersTurn = Bool.random()
        if isItPlayersTurn {
            print("Vous avez gagné le tirage au sort, vous attaquez en premier")
        } else {
            print("Le Bot a gagné le tirage au sort, il vous attaquera en premier")
        }
        while t1000.health > 0 && player.health > 0 {
            counter += 1
            if isItPlayersTurn == true {
                player.attack(bot:t1000)
                t1000.displayYourData()
            } else {
                t1000.attack(player: player)
                player.displayYourData()
            }
            isItPlayersTurn.toggle()
            print("Fin de l'attaque \(counter)")
            print()
        }
        if player.isAlive {
            print("Bravo, vous avez vaincu le Bot!")
            player.didWin(against: t1000)
            botCount += 1
        }
    }
    
    print("Nombre de bots vaincus : \(botCount)")
    player.displayYourData()
}
launchGame()





