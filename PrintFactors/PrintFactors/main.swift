//
//  main.swift
//  PrintFactors
//
//  Created by Veldanov, Anton on 2/6/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

//func calculateFactors(n: Int) -> String {
//    var result: String = ""
//    for i in 1...n {
//        guard n % i == 0  else {continue}
//        result += i == 1 ? "1" : " and \(i)"
//    }
//    print(result)
//
//    return result
//}


//func factors(of number: Int) -> [Int] {
//    return (1...number).filter { number % $0 == 0 }
//}
//
//print(factors(of: 24))


//calculateFactors(n:12)


func printFactors(of number: Int){
    var i = 1
    
    while i*i <= number{
        if number%i==0{
            print(i," * ",number/i)
        }
        
       i+=1
    }
    
}

printFactors(of: 12)

