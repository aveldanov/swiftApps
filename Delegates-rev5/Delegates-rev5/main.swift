//
//  main.swift
//  Delegates-rev5
//
//  Created by Veldanov, Anton on 3/16/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//


import UIKit


protocol PersonProtocol {
    func getName()->String
    func getAge()->Int
}



class Person {
    var delegate:PersonProtocol?
    func printName(){
        
        if let del = delegate{
            print(del.getName())

        }else{
            print("Delegate NAME is not assgined")
        }
    }
    
    
    func printAge(){
        if let del = delegate{
            print(del.getAge())

        }else{
            print("Delegate AGE is not assgined")
        }
    }
}





var person1 = Person()

print(person1)


class ViewController

