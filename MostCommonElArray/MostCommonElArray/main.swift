//
//  main.swift
//  MostCommonElArray
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

let list = ["moscow","reutov","newyork","moscow"]

func mostCommonElArry(arr:[String])->String{
    var dict = [String:Int]()
    var mostCommon = ""
    var max = 0
    
    for item in arr{
        if dict[item] == nil {
            dict[item] = 1
        }else{
            dict[item]! += 1
        }
    }
    
    for key in dict.keys{
        if dict[key]!>max{
            max = dict[key]!
            mostCommon = key
        }
//        print(key)
        
    }
    
    
    
    
    
    return mostCommon
}



print(mostCommonElArry(arr: list))





