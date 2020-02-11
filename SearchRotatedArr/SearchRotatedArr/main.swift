//
//  main.swift
//  SearchRotatedArr
//
//  Created by Veldanov, Anton on 2/6/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

//func search(nums: [Int], target: Int) -> Bool {
//    guard nums.count > 0 else { return false }
//    var left = 0, right = nums.count - 1
//
//    while left < right {
//
//        let mid = (left + right)/2
//        print(mid)
//        if nums[mid] == target { return true }
//
//        if nums[left] < nums[mid] {
//            if target < nums[mid] && target >= nums[left] { right = mid - 1 }
//            else { left = mid + 1 }
//        } else if nums[left] > nums[mid] {
//            if target > nums[mid] && target <= nums[right] { left = mid + 1 }
//            else { right = mid - 1 }
//        } else { left += 1 }
//    }
//    return nums[left] == target
//}        [5,6,1,2,3,4], target: 3)


func search(nums: [Int], target: Int) -> Bool {
    guard nums.count > 0 else { return false }
    var left = 0, right = nums.count - 1
    // search pivot
    
    var pivot = 0

    while left < right{
        let mid = (right+left)/2
        print("mid",mid)
      
        
        if nums[mid+1]>nums[mid+2]{
            pivot = mid
//            print("Pivot",pivot)
            
        }
        if nums[left]<nums[mid]{
            left = mid+1
            
        }else {
            right = mid
        }
        
        
        
    }
    
    
    var start = pivot
    print("start",start)
    while start<right{
        
        print(start)
        if target>=nums[pivot]{
            left = pivot+1
            
        }else{
            right = pivot
        }
        let mid = (right+left)/2
        print("left",left)
        print("right",right)

        print("mid",mid)
        if nums[mid] == target {
            return true
        }
        
        
        if nums[mid]<target{
            left = mid + 1
        }else{
            right = mid-1
            
        }
        
    }
    
    
    
    
    return false
}

print(search(nums: [5,6,1,2,3,4], target: 3))

