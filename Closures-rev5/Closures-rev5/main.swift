//
//  main.swift
//  Closures-rev5
//
//  Created by Veldanov, Anton on 3/15/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//


let array = [4,5,6,7,2,3]

func addOne(n1:Int)->Int{
    
    return n1 + 1
}

print(array.map({$0+1}))


print(addOne(n1: 4))






//func calculator(n1: Int, n2: Int,operation: (Int, Int)->Int) -> Int{
//    return operation(n1,n2)
//}
//
//
////func add(no1: Int, no2: Int)->Int{
////    return no1 + no2
////}
//
//
//// trailing closure
//print(calculator(n1: 2, n2: 3){$0 * $1})
