//
//  main.swift
//  DataStructures
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//



struct Stack<Element> {
    // storage
    
    var storage: [Element] = []
    
    // push
    
    mutating func push(element:Element){
        
        storage.append(element)
    }
    
    
    // pop
    
    
    
}


extension Stack: CustomStringConvertible{
    var description: String{
        return storage.map{"\($0)"}.joined(separator: " ")
    }
}


var stack = Stack(storage: [])
stack.push(element: 1)
stack.push(element: 2)
stack.push(element: 3)

print(stack)


