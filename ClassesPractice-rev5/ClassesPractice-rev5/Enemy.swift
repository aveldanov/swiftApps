//
//  Enemy.swift
//  ClassesPractice-rev5
//
//  Created by Veldanov, Anton on 3/9/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

struct Enemy {
    var health: Int
    var attackStrength: Int

    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    mutating func takeDamage(amount: Int){
        
       health -= amount
    }
    
    func move(){
        print("Move Forward")
    }
    func attack(){
        print("Land a hit, does \(attackStrength) damage")
    }
}
