//
//  main.swift
//  PalindromePermutation
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation





func palindromPermutation(str:String)->Bool{
    var oddChar: Set<Character> = []

    for item in str{
        if oddChar.contains(item){
            oddChar.remove(item)
        }else{
            
            oddChar.insert(item)
        }
        
    }
    
    return oddChar.count <= 1
}


print(palindromPermutation(str: "abba"))


