//
//  main.swift
//  TwoSumProblem
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

let numbers = [1,3,6,7,7,12,14]

// 1 Naive of O(n^2) notation

func twoSumNaive(arr:[Int], sum:Int)->Bool{
    
    for i in 0..<arr.count{
        // j != i to make sure I'm no comparing the same number say 1 and the same 1
        for j in 0..<arr.count where j != i{
            if arr[i]+arr[j]==sum{
                print("True", arr[i], arr[j])
                return true
            }else{
                print("False", arr[i], arr[j])

                
            }
        }
        
    }
 
    
    
    
    return false
}


print(twoSumNaive(arr: numbers, sum: 20))


// 2 Binary Search for a compliment. if sum is 10 compliment for 3 is 7 -> n logn
let numbers2 = [1,3,6,7,7,12,14]



func twoSumBinaryCompliment(arr:[Int], sum:Int)->Bool{
    
    
    
    return false
}
