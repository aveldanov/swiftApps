//
//  Enemy.swift
//  ClassesPractice-rev5
//
//  Created by Veldanov, Anton on 3/9/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

class Enemy {
    var health = 100
    var attackStrength = 10

    func move(){
        print("Move Forward")
    }
    func attack(){
        print("Land a hit, does \(attackStrength) damage")
    }
}
