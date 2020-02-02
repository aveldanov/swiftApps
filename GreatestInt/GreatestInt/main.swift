//
//  main.swift
//  GreatestInt
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

func findGreatestValueInList(list:[Int])->Int?{
    
    var max = -1
    for num in list{
        if num>max{
            max=num
        }
        
    }
    
    
    return max
}


print(findGreatestValueInList(list: [-4,-5,-8,-2,-3,-4,-6,-7,-8,-9]))
