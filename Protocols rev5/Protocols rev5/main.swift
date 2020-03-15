//
//  main.swift
//  Protocols rev5
//
//  Created by Veldanov, Anton on 3/13/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//


protocol CanFly {
  func fly()
}




class Bird {
    
    var isFemale = true
    
    func layEgg(){
        if isFemale{
            print("layed an Egg")
        }
    }

//    func fly(){
//
//        print("Bird flaps wings and flies")
//    }
}


class Eagle: Bird, CanFly{
    func fly() {
        print("Eagle flyes far")
    }
    
    func soar(){
        print("Eagle soaring")
    }
}

class Penguin: Bird {
    func swim(){
        print("Penguin is swimming")
    }
}


struct Airplane: CanFly {
     func fly() {
        print("Plane is flying")
    }
}


struct FlyingMuseum {
    func flyingDemos(flyingObject:CanFly){
        flyingObject.fly()
    }
}


let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
let museum = FlyingMuseum()



museum.flyingDemos(flyingObject: myPlane)
