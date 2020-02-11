//
//  main.swift
//  isomorphic
//
//  Created by Veldanov, Anton on 2/5/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

// foo -> add
// paper -> title



func isoMorph(str1:String, str2:String)-> Bool{
    var chMap = [Character:Character]()
    
    var arrCh1 = Array(str1)
    var arrCh2 = Array(str2)
    
    if str1.count != str2.count{
        print(str1.count)
        return false
    }else if str1 == str2{
        return true
    }
    
    for i in 0..<arrCh1.count{
        print(i)
        
        if chMap[arrCh1[i]]==nil{
            print("AR1", arrCh1[i])
            print("CH1",chMap[arrCh1[i]])
            
            print("AR2", arrCh2[i])
            print("CH2",chMap[arrCh2[i]])
            print("")
        
            if chMap.values.contains(where: {$0 == arrCh2[i]}) {
                return false
            }
           
            
            chMap[arrCh1[i]] = arrCh2[i] // b:a, a:a
            
            print(chMap)
        }else if chMap[arrCh1[i]] != arrCh2[i]{
            
            print("Both string are not mapping at index \(i)")
            return false
        }
        
        
    }
    
    
    
    return true
}


print(isoMorph(str1: "ab", str2: "aa"))

// ab aa

// ab ac
