//
//  main.swift
//  SturctRev5
//
//  Created by Veldanov, Anton on 3/8/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation


struct Town{
    let name: String
    var citizens: [String]
    var resources:[String:Int]
    func fortify(){
        print("Defences increased")
    }
    
// Init() is optional for Struct
    
//    init(name:String,citizens:[String], resources:[String:Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
    
    mutating func harvestRice(){
        
        resources["Rice"] = 100
    }
}



var myTown = Town(name: "An", citizens: ["John"], resources: ["Coc":3])
myTown.harvestRice()
print(myTown)














//
//struct Town{
//    let name = "AntonTown"
//    var citizens = ["Anton","Anton2"]
//    var resources = ["Grain":100, "Ore":42, "Wool":42]
//    func fortify(){
//        print("Defences increased")
//    }
//}
//
//
//var myTown = Town()
//
//print(myTown.citizens)
//print("My Town \(myTown.name) has \(myTown.resources)")
//
//myTown.citizens.append("John")
//print(myTown.citizens)
//myTown.fortify()
