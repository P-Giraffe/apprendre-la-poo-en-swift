//
//  File.swift
//  App_Console
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

class Math {
    static func nombreAleatoire(comprisEntre min:Int, et max:Int) ->Int {
        return Int(arc4random_uniform(UInt32(max + 1)) + UInt32(min))
    }
}

func rollDices(username:String) -> Int {
    let dicesValue:Int = Int.random(in: 1...6) + Int.random(in: 1...6)
    print("\(username) a lancé les dés et a obtenu \(dicesValue)")
    return dicesValue
}
