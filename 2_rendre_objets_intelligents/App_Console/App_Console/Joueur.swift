//
//  Joueur.swift
//  App_Console
//
//  Created by Maxime Britto on 27/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Joueur {
    static let pseudoParDefaut = "Bob"
    var pseudo:String
    var score:Int = 0
    
    init(pseudo:String) {
        if pseudo.count == 0 {
            self.pseudo = Joueur.pseudoParDefaut
        } else {
            self.pseudo = pseudo
        }
    }
    
    convenience init(pseudo:String, score:Int) {
        self.init(pseudo:pseudo)
        self.score = score
    }
    
    func partieGagnée(bonus:Int = 30) {
        self.score = self.score + bonus
    }
    
      
    var niveau: Int {
        get { self.score / 100 }
        set(newLevel) {
            self.score = newLevel * 100
        }
    }
}
