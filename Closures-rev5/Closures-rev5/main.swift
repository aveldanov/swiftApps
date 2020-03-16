//
//  main.swift
//  Closures-rev5
//
//  Created by Veldanov, Anton on 3/15/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//



func calculator(n1: Int, n2: Int,operation: (Int, Int)->Int) -> Int{
    return operation(n1,n2)
}


func add(no1: Int, no2: Int)->Int{
    return no1 + no2
}

func multiply(no1: Int, no2: Int)->Int{
    return no1 * no2
}

print(calculator(n1: 2, n2: 3, operation: multiply))
