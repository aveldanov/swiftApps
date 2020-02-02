//
//  main.swift
//  ReduceFunc
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//



// 1. sum of array of int
// 2. producrion of array of int
// 3. transform arr of Strings into sentence



func sumArr(arr:[Int])->Int{
    var sum = 0
    
    for i in arr{
        sum += i
    }

    
    return sum
}

//let mySum = [1,2,3,4,5].reduce(0) { (result, item) -> Int in
//    return result + item
//}

let mySum = [1,2,3,4,5].reduce(0, {$0 + $1})


print(mySum)
//print(sumArr(arr: [1,2,3,4]))



// 2. producrion of array of int


//func prodArr(arr:[Int])->Int{
//    var prod = 1
//
//    for item in arr{
//        prod *= item
//    }
//
//
//    return prod
//}


//let prodRed = [1,2,3].reduce(1){ (res, item)->Int in return res*item}

let prodRed = [1,2,3].reduce(1) { $0*$1 }

print(prodRed)
//print(prodArr(arr: [1,2,3]))


// 3. transform arr of Strings into sentence


let str = ["A","B","C"].reduce("") { (sentence, item) ->String in
    return sentence + item
}


print(str)
