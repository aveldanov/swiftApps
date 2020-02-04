//
//  main.swift
//  NestedArray
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

//[1] -> [1]
// [1,2,3] -> [1,2,3]
// [1,[2]] -> [1,2]
// [1,[2,3] -> [1,2,3]
//[1,[2,[3,4]]] -> [1,2,3,4]



func flatArray(arr:[Any])->[Int]{
    var myFlattenedArray = [Int]()
    for elem in arr{
        
        if elem is Int{
            
            myFlattenedArray.append(elem as! Int)
            
        }else if elem is [Any]{
            print(elem)
            let recursionResult = flatArray(arr: elem as! [Any])
            print(recursionResult)
            
            for num in recursionResult{
                
               print(num)
                myFlattenedArray.append(num)
            }
            
            
//            let nestedElem = elem as! [Int]
//
//            for num in nestedElem{
//                myFlattenedArray.append(num)
//
//            }
            
            
        }
        
    }
    
    return myFlattenedArray
}

print(flatArray(arr:[1,[2,[3]]]))
