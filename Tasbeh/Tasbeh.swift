//
//  Tasbeh.swift
//  Tasbeh
//
//  Created by Mobark Alseif on 18/03/1443 AH.
//

import Foundation



struct Tasbeh {
    
    var counter = 0
    
    mutating func conterTasbeh() -> Int {
        counter += 1
        return counter
    }
    mutating func resetTasbeh() -> Int {
        counter = 0
        return counter
    }
    
}
