//
//  main.swift
//  Closure
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//



func filterGreaterThanValue(value:Int, numbers:[Int])->[Int]{
    var arr:[Int]=[]
    for num in numbers{
        if num>value{
            arr.append(num)
            
        }
        
    }
    
    return arr
}


func filterWithPredicteClosure(closure:(Int)->Bool, numbers:[Int] )->[Int]{
    
    var filteredNumbers = [Int]()
    for num in numbers{
        if closure(num){
            
            filteredNumbers.append(num)
        }
        
    }
    
    
    return filteredNumbers
}



func greaterThanFive(value:Int)->Bool{
    
    
    return value > 5
    
}


let filteredList = filterWithPredicteClosure(closure: greaterThanFive, numbers: [1,2,4,5,6,7,8,9,5,3])

//let filteredList = filterWithPredicteClosure(closure: {(num) -> Bool in return num > 5}, numbers: [1,2,4,5,6,7,8,9,5,3])

print(filteredList)


//print(filterGreaterThanValue(value: 5, numbers: [1,2,4,5,6,7,8,9,5,3]))

