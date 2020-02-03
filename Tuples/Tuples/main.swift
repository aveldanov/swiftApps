//
//  main.swift
//  Tuples
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//


let tup = ("Boris","Johnson")

//print(tup.0)



func multiply(x:Int,y:Int)->Int{
    
    return x*y
}

//print(multiply(x: 3, y: 4))


func multYup(x:Int,y:Int) -> (Int,Int) {
    let quot = x/y
    let rem = x%y
    
    
    return (quot,rem)
}


print(multYup(x: 7, y: 2))
