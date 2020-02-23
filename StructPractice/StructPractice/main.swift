//
//  main.swift
//  StructPractice
//
//  Created by Veldanov, Anton on 2/11/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation


struct Town{
    let name: String
    var citizens: [String]
    var resources: [String:Int]
    
    init(name:String, citizens:[String],resources:[String:Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    
    
    
    func fortify(){
        print("Defences Increased!")
    }
}

var newTown = Town(name: <#T##String#>, citizens: <#T##[String]#>, resources: <#T##[String : Int]#>)




















//struct Town{
//    let name = "AntonTown"
//    var citizens = ["cit1","cit2","cit3"]
//    var resources = ["res1":1,"res2":3,"res3":4]
//
//    func fortify(){
//        print("Defences Increased!")
//
//    }
//
//}



