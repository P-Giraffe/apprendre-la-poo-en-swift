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
    private var pseudo:String
    private var _score:Int = 0
    var score: Int {
        get { _score }
        set {
            _score = max(0, newValue)
        }
    }
    
    init(pseudo:String) {
        if pseudo.count == 0 {
            self.pseudo = Joueur.pseudoParDefaut
        } else {
            self.pseudo = pseudo
        }
    }
    
    convenience init(pseudo:String, score:Int) {
        self.init(pseudo:pseudo)
        self._score = score
    }
    
    func partieGagnée(bonus:Int = 30) {
        self._score = self._score + bonus
    }
    
      
    var niveau: Int {
        get { self._score / 100 }
        set(newLevel) {
            self._score = newLevel * 100
        }
    }
}
