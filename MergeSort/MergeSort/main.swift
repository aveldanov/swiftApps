//
//  main.swift
//  MergeSort
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

//split
func mergeSort(arr:[Int])->[Int]{
    guard arr.count > 1 else{
        return arr
    }
    
    let leftArray = Array(arr[0..<arr.count/2])
    let rightArray = Array(arr[arr.count/2..<arr.count] )
    print("left ARR: ", leftArray,"right ARR: ", rightArray)
    
    
    
    return merge(left: mergeSort(arr: leftArray), right: mergeSort(arr: rightArray))
}


//merge
func merge(left:[Int],right:[Int]) -> [Int] {
    var mergedArray:[Int] = []
    // make them mutable
    var left = left
    var right = right
    
    
    while left.count > 0  && right.count > 0  {
//        print("left: \(left[0]), right: \(right[0])")
        if left[0] < right[0]{
            mergedArray.append(left.removeFirst())
//            print(mergedArray)

        }else{
            mergedArray.append(right.removeFirst())
//            print(mergedArray)
        }
    }
    print("merge: ", mergedArray+left+right)
    print("")
    return mergedArray + left + right
}




//print("merge", merge(left: [7,3,1,8], right: [5,4,2,6]))

print(mergeSort(arr: [7,3,1,8,5,4,2,6]))

