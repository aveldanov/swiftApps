//
//  main.swift
//  Optionals-rev5
//
//  Created by Veldanov, Anton on 3/11/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//



let myOptional: String?

myOptional = "Anton"
if myOptional != nil{
    let text:String = myOptional!
    let text2:String = myOptional!
}


if let safeOptional = myOptional ?? "NOPE"{ //binds(equals) only if it is not NIL!!!
    let text:String = safeOptional
    let text2:String = safeOptional
    print(safeOptional)
}else{
    print("Nil")
}
