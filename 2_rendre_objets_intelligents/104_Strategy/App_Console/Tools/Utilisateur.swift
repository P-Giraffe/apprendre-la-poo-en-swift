//
//  Utilisateur.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

class Utilisateur {
    static func saisirEntier() -> Int {
        var readValue:Int?
        repeat {
            let rawValue = Utilisateur.saisirTexte()
            if let value = Int(rawValue) {
                readValue = value
            } else {
                print("Une valeur entière doit être saisie")
            }
        } while readValue == nil
        
        return readValue!
    }
    
    static func saisirReel() -> Double {
        var readValue:Double?
        repeat {
            let rawValue = Utilisateur.saisirTexte()
            if let value = Double(rawValue) {
                readValue = value
            } else {
                print("Une valeur réelle doit être saisie")
            }
        } while readValue == nil
        
        return readValue!
    }
    
    static func saisirTexte() -> String {
        var rawValue:String?
        repeat {
            rawValue = readLine()
            if rawValue == nil {
                print("Une valeur doit être saisie")
            }
        } while rawValue == nil
        
        return rawValue!
    }
    
    static func choisirOptionMenu(message:String, max:Int) -> Int {
        var userChoice:Int
        repeat {
            print(message)
            userChoice = Utilisateur.saisirEntier()
        } while userChoice < 1 || userChoice > max
        
        return userChoice
    }
}
