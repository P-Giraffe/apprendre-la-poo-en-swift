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
    let player = Player()
    player.nickname = Utilisateur.saisirTexte()
    
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
            attack(from: player, to: t1000)
            display(bot: t1000)
        } else {
            attack(from: t1000, to: player)
            display(player: player)
        }
        isItPlayersTurn.toggle()
        print("Fin de l'attaque \(counter)")
        print()
    }
    
    if player.health > 0 {
        print("Bravo, vous avez vaincu le Bot!")
    } else {
        print("Oups vous avez été terrassé :(")
    }
}
launchGame()

func rollDices(username:String) -> Int {
    let dicesValue:Int = Int.random(in: 1...6) + Int.random(in: 1...6)
    print("\(username) a lancé les dés et a obtenu \(dicesValue)")
    return dicesValue
}

func display(player:Player) {
    print("\(player.nickname) :\nSanté - \(player.health)% \nForce - \(player.strength)")
}

func display(bot:Bot) {
    print("Bot :\nSanté - \(bot.health)% \nForce - \(bot.strength)")
}

func attack(from player:Player, to bot:Bot) {
    print("\(player.nickname), appuyez sur 'Entrée' pour lancer les dés")
    _ = Utilisateur.saisirTexte()
    let dicesValue = rollDices(username: player.nickname)
    bot.health = bot.health - dicesValue
    print("\(player.nickname) assène un coup sur le bot avec une force de \(dicesValue)")
}

func attack(from bot:Bot, to player:Player) {
    let dicesValue = rollDices(username: "Bot")
    player.health -= dicesValue
    print("Le Bot vous assène un coup avec une force de \(dicesValue)")
}
