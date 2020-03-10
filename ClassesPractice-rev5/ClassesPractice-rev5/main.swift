//
//  main.swift
//  ClassesPractice-rev5
//
//  Created by Veldanov, Anton on 3/9/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

// CLASS -> REFERNCE UPDATE and can inherit. Classes are passed by reference (LINK to PHOTO)
// STRUCK - immutable(to change needs to be destoyed) and creates a new object. Passed by value!! (COPY of PHOTO)

var skeleton = Enemy(health: 10, attackStrength: 1)
let skeleton2 = skeleton // reference to the same object
print(skeleton.health)

//let dragon = Dragon(health: 100, attackStrength: 5)


//dragon.wingSpan = 5
//dragon.talk(speech: "Yo people")
////dragon.move()
//dragon.attack()

skeleton.takeDamage(amount: 5)
//print(dragon.health)
print(skeleton.health)
print(skeleton2.health)


