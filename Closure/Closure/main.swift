//
//  main.swift
//  Closure
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//



func filterGreaterThanValue(value:Int, numbers:[Int])->[Int]{
    var arr:[Int]=[]
    for num in numbers{
        if num>value{
            arr.append(num)
            
        }
        
    }
    
    return arr
}


print(filterGreaterThanValue(value: 5, numbers: [1,2,4,5,6,7,8,9,5,3]))

