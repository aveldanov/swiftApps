//
//  main.swift
//  MaxSumSubArray
//
//  Created by Veldanov, Anton on 2/5/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation



func maxSubArray(_ n: [Int]) -> Int {
    let nums = n
    var best = nums[0];
    var current = nums[0];
    
    for i in 1..<nums.count {
        print("current: ", current)
        print("nums[\(i)]: ", nums[i])
        current = max( nums[i], current+nums[i]);
        print("MAX: ", current)
        
        best = max(current, best);
       
        print("best: ", best)
        print("")
    }
    
    return best;
}


print(maxSubArray([1, 2, -4, 1, 3, -2, 3, -1]))
//                  1, 3,  -1
// max at 0 -> 1 (1) skipped
// max at 1 -> 3 (2, 3)
// max at 2 -> -1 (-1 vs -4)//cut off
// max at 3 -> 1 (-1 vs 1 )
// max at 4 -> 4  (3 vs 4 )
// max at 5 -> 2   (-2 vs 2 )
// max at 6 -> 5   (3 vs )
// max at 7 -> 4


// [-2, 1, -3, 4, -1, 2, 1, -5, 4]
// max at 0 -> -2 (-2)
// max at 1 -> 1 (1, -1)
// max at 2 -> -2 (-3 vs -2)
// max at 3 -> 4 (4 vs 2 )
// max at 4 -> 3  (-1 vs 3 )
// max at 5 -> 5   (2 vs 5 )
// max at 6 -> 6   (1 vs 6)
// max at 7 -> 1   (-5 vs 1)
// max at 8  -> 5   (4 vs 5)
