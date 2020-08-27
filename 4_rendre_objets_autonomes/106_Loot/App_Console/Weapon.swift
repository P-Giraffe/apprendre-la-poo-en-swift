//
//  Weapon.swift
//  App_Console
//
//  Created by Maxime Britto on 26/08/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Weapon {
    let name:String
    let power:Int
    let accuracy:Double
    
    init(name: String, power: Int = 1, accuracy: Double = 1.0) {
        self.name = name
        self.power = power
        self.accuracy = accuracy
    }
    
    var description: String {
        "\(name) - Puissance:\(power) - Précision:\(Int(accuracy*100))%"
    }
}
