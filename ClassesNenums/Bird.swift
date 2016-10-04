//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow
    case medium
    case fast
    func isFaster(thanSpeed: Speed) -> Bool {
        switch self {
        case .fast:
            switch thanSpeed {
            case .slow, .medium, self:   return true
            default : return false }
        case .slow, .medium:
            return false
        }
    }
}

enum Diet {
    case meatEater
    case vegetarian
}

enum Sex {
    case male
    case female
}

class Trex {
    var speed: Speed = Speed.fast
    var diet: Diet = Diet.meatEater
    var name: String
    var sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex: Trex) -> Bool {
        if speed.isFaster(thanSpeed: thanTrex.speed) {
            return true
        }
        return false
    }
    
    func eat(otherTrex: Trex) {
        print(otherTrex.speed)
        if self.speed.isFaster(thanSpeed: otherTrex.speed) {
            otherTrex.isAlive = false
        }
    }

}




